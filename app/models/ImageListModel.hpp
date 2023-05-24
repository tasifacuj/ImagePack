#pragma once

// qt
#include <QString>
#include <QStandardItemModel>

#include "ImageItem.hpp"
#include "ImageListObserver.hpp"


class ImageListModel : public QStandardItemModel{
  Q_OBJECT

private:// == members ==
    ImageListObserver   imageObserver_;

public:// == TYPES ==
  enum ImageListModelRoles{
      itemName = Qt::UserRole,
      itemSize,
      itemStatus
  };

public:// == CTOR ==
    ImageListModel( QString const& imageDir, QObject* parent = nullptr );

public:
    void addItem(const ImageItem& aItem);
    void clear();
    void setItems( QList<ImageItem> const& aItems );
private:

};
