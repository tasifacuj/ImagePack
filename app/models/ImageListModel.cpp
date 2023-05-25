#include "ImageListModel.hpp"
#include <QDebug>

static const QString errdescription[] = {
    "ENCODING",
    "DECODING",
    "NONE",
    "ERROR"
};

ImageListModel::ImageListModel(const QString &imageDir, QObject *parent)
    : QStandardItemModel( parent )
    , imageDir_( imageDir ){
    if( !imageDir_.endsWith( '/' ) )
        imageDir_.append( '/' );

    QHash<int, QByteArray> names;
    names[itemName] = "itemName";
    names[itemSize] = "itemSize";
    names[itemStatus] = "itemStatus";
    setItemRoleNames(names);

    qDebug() << "--------------";
    connect( &imageObserver_, &ImageListObserver::signalImageListRefreshed, this, &ImageListModel::setItems);
    imageObserver_.slotAddPath( imageDir );
    appImgTraverser_.moveToThread( &thrd_ );
    thrd_.start();

    connect( this, &ImageListModel::signalEncode, &appImgTraverser_, &AppImageTraverser::slotEncode, Qt::QueuedConnection );
    connect( this, &ImageListModel::signalDecode, &appImgTraverser_, &AppImageTraverser::slotDecode, Qt::QueuedConnection );
    connect( &appImgTraverser_, &AppImageTraverser::signalStatusEncodeChanged, this, &ImageListModel::slotStatusEncodeChanged, Qt::QueuedConnection );
    connect( &appImgTraverser_, &AppImageTraverser::signalStatusDecodeChanged, this, &ImageListModel::slotStatusDecodeChanged, Qt::QueuedConnection );
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
    QString name = pItem->data( itemName ).toString();
    QStringRef enc = encoding( name );
    QString fullPath = imageDir_ + name;
    name2Index_[ name ] = idx;

    if( enc == "bmp" || enc == "png" ){
        emit signalEncode( fullPath );
    }else{
        emit signalDecode( fullPath );
    }
}

void ImageListModel::slotStatusEncodeChanged( int status,QString const& filePath ){
    int slPos = filePath.lastIndexOf( "/" );
    QString name = filePath.mid( slPos + 1 );
    assert( name2Index_.count( name ) );
    int idx = name2Index_[ name ];
    auto apItem = QStandardItemModel::item( idx );
    auto *pItem = new QStandardItem();
    pItem->setData( apItem->data( itemName ), itemName );
    pItem->setData(apItem->data( itemSize ), itemSize );
    qDebug() << "Set new status" << errdescription[ status ] << "for" << name;
    pItem->setData(status, itemStatus);
    QStandardItemModel::setItem(idx, pItem);

    if( status == NONE || status == ERROR )
        name2Index_.remove( name );

    if( status == ERROR )
        emit signalImagePackWarn( "Failed to encode " + name );
}


void ImageListModel::slotStatusDecodeChanged( int status,QString const& filePath ){
    int slPos = filePath.lastIndexOf( "/" );
    QString name = filePath.mid( slPos + 1 );
    assert( name2Index_.count( name ) );
    int idx = name2Index_[ name ];
    auto apItem = QStandardItemModel::item( idx );
    auto *pItem = new QStandardItem();
    pItem->setData( apItem->data( itemName ), itemName );
    pItem->setData(apItem->data( itemSize ), itemSize );
    qDebug() << "Set new status" << errdescription[ status ] << "for" << name;
    pItem->setData(status, itemStatus);
    QStandardItemModel::setItem(idx, pItem);

    if( status == NONE || status == ERROR )
        name2Index_.remove( name );

    if( status == ERROR )
        emit signalImagePackWarn( "Failed to decode " + name );
}
