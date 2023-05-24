#include "ImageListModel.hpp"
#include <QDebug>

ImageListModel::ImageListModel(const QString &imageDir, QObject *parent)
    : QStandardItemModel( parent )
    , imageDir_( imageDir ){
    QHash<int, QByteArray> names;
    names[itemName] = "itemName";
    name2Role_[ "itemName" ] = itemName;
    names[itemSize] = "itemSize";
    name2Role_[ "itemSize" ] = itemSize;
    names[itemStatus] = "itemStatus";
    name2Role_[ "itemStatus" ] = itemStatus;
    setItemRoleNames(names);

    qDebug() << "--------------";
    connect( &imageObserver_, &ImageListObserver::signalImageListRefreshed, this, &ImageListModel::setItems);
    imageObserver_.slotAddPath( imageDir );

    appImgTraverser_.moveToThread( &thrd );
    connect( this, &ImageListModel::signalEncode, &appImgTraverser_, AppImageTraverser::slotEncode, Qt::QueuedConnection );
    connect( this, &ImageListModel::signalDecode, &appImgTraverser_, AppImageTraverser::slotDecode, Qt::QueuedConnection );
    connect( &appImgTraverser_, &AppImageTraverser::signalStatusChanged, this, &ImageListModel::slotStatusChanged, Qt::QueuedConnection );
}

void ImageListModel::clear(){
    QStandardItemModel::removeRows(0, rowCount());
}

void ImageListModel::setItems( QList<ImageItem> const& aItems ){
    clear();

    for( auto const& item : aItems ){
        addItem( item );
    }
}

void ImageListModel::addItem(const ImageItem& aItem){
    qDebug() << "Adding" << aItem.name << "," << aItem.size << "," << aItem.status;
    auto *pItem = new QStandardItem();
    pItem->setData( aItem.name, itemName );
    pItem->setData( aItem.size, itemSize );
    pItem->setData( aItem.status, itemStatus );
    QStandardItemModel::appendRow( pItem );
}

static QStringRef encoding( QString const& source ) {
    int dotPos = source.lastIndexOf( "." );
    return source.midRef( dotPos + 1 );
}

void ImageListModel::handleClick( int idx ){
    qDebug() << "handle" << idx;
    auto pItem = item( idx );
    Qstring name = pItem->data( itemName ).toString();
    QStringRef enc = encoding( name );
    QString fullPath = imageDir_ + name;

    if( enc == "bmp" || enc == "png" ){
        emit signalEncode( fullPath );
    }else{
        emit signalDecode( fullPath );
    }
}

void ImageListModel::slotStatusChanged( int status,QString const& oldFilePath,  QString const& newFilePath ){
    switch( status ){
    case ENCODING:
    case DECODING:
    case NONE:
    {
        int slPos = oldFilePath.lastIndexOf( "/" );
        QStringRef name = oldFilePath.midRef( slPos + 1 );
        assert( name2Role_.count( name ) );
        auto pItem = item( name2Role_[ name ] );
        pItem->setData( status, itemStatus);
    }
        break;
    default:
        qDebug() << "Received" << status << "for {" << oldFilePath << "," << newFilePath << "}";
        // emit error
}
