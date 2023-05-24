#include "ImageListObserver.hpp"

#include <QDir>
#include <QFileInfo>
#include <QDebug>

ImageListObserver::ImageListObserver(QObject *apParent)
    : QObject(apParent)
    , watcher_( new QFileSystemWatcher( this ) ){
    connect( watcher_, &QFileSystemWatcher::directoryChanged, this, &ImageListObserver::slotDirectoryChanged);
    slotRefresh();
}

void ImageListObserver::slotDirectoryChanged(QString const& aPath){
    qDebug() << "ImageListObserver::slotDirectoryChanged"<<aPath;
    slotRefresh();
}


void ImageListObserver::slotRefresh(){
    QList<ImageItem> list;

    for (auto const& path: watcher_->directories()) {
        QDir curDir( path );
        for ( const QFileInfo& fileInfo : curDir.entryInfoList({"*.png", "*.bmp", "*.barch"}) )
            list.append( ImageItem{fileInfo.fileName(), fileInfo.size(), 2} );
    }

    emit signalImageListRefreshed(list, QPrivateSignal());
}

void ImageListObserver::slotAddPath( QString const& aPath ){
    qDebug() << "00000";
    watcher_->addPath(aPath);
    qDebug() << "11111";
    slotRefresh();
}
