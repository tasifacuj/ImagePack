#pragma once

// qt
#include <QString>
#include <QStandardItemModel>
#include <QThread>

#include "ImageItem.hpp"
#include "ImageListObserver.hpp"
#include "AppImageTraverser.hpp"

/**
 * @brief Model for image list
*/
class ImageListModel : public QStandardItemModel{
  Q_OBJECT

private:// == members ==
    QHash< QString, int >   name2Index_;        //!< maps particular image name -> index in the view during encode/decode
    QString                 imageDir_;          //!< where we search images
    ImageListObserver       imageObserver_;     //!< directory content watcher
    QThread                 thrd_;              //!< worker thrd for encode/decode
    AppImageTraverser       appImgTraverser_;   //! encoder/decoder

public:// == TYPES ==
  enum ImageListModelRoles{
      itemName = Qt::UserRole,
      itemSize,
      itemStatus
  };

    static constexpr int ENCODING   = 0;
    static constexpr int DECODING   = 1;
    static constexpr int NONE       = 2;
    static constexpr int ERROR      = 3;
public:// == CTOR ==
    ImageListModel( QString const& imageDir, QObject* parent = nullptr );

signals:
    void signalEncode( QString const& filePath );
    void signalDecode( QString const& filePath );
    void signalImagePackWarn( QVariant warn );

public:
    void addItem(const ImageItem& aItem);
    void clear();
    void setItems( QList<ImageItem> const& aItems );

    Q_INVOKABLE void handleClick( int idx );

private slots:
    void slotStatusEncodeChanged(int status, const QString& filePath);
    void slotStatusDecodeChanged(int status, const QString& filePath);
};
