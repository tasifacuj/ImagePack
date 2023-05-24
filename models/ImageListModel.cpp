#include "ImageListModel.hpp"
#include <QDebug>

ImageListModel::ImageListModel(QObject *parent)
    : QStandardItemModel( parent )
{
    QHash<int, QByteArray> names;
    names[itemName] = "itemName";
    names[itemSize] = "itemSize";
    names[itemStatus] = "itemStatus";
    setItemRoleNames(names);
}

void ImageListModel::addItem(const ImageItem& aItem){
    qDebug() << "Adding" << aItem.name << "," << aItem.size << "," << aItem.status;
    auto *pItem = new QStandardItem();
    pItem->setData( aItem.name, itemName );
    pItem->setData( aItem.size, itemSize );
    pItem->setData( aItem.status, itemStatus );
    QStandardItemModel::appendRow( pItem );
}

