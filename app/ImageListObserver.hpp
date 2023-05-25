#pragma once
//qt
#include <QFileSystemWatcher>

//project
#include "models/ImageItem.hpp"

/*
 * @brief monitors provided directory for the chages
 * Current implementation is bad, because it does not wait for file close on write, inotify wanted.
*/
class ImageListObserver : public QObject {
    Q_OBJECT

public:
    ImageListObserver(QObject* apParent = nullptr);

signals:
    void signalImageListRefreshed(QList<ImageItem> const& aItems, QPrivateSignal);

private slots:
    void slotDirectoryChanged(QString const& aPath);

public slots:
    void slotRefresh();
    void slotAddPath(QString const& aPath);

private:
    QFileSystemWatcher *watcher_;//!< FXIME: use inotify instead!!!
};
