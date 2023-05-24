#include "ImageListModel.hpp"
#include <QDebug>

ImageListModel::ImageListModel(const QString &imageDir, QObject *parent)
    : QStandardItemModel( parent ){
    QHash<int, QByteArray> names;
    names[itemName] = "itemName";
    names[itemSize] = "itemSize";
    names[itemStatus] = "itemStatus";
    setItemRoleNames(names);

    qDebug() << "--------------";
    connect( &imageObserver_, &ImageListObserver::signalImageListRefreshed, this, &ImageListModel::setItems);
    imageObserver_.slotAddPath( imageDir );
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

