#pragma once

// qt
#include <QString>
#include <QStandardItemModel>

struct ImageItem{
    QString name;
    int size;
    QString status;
};


class ImageListModel : public QStandardItemModel{
  Q_OBJECT

public:// == TYPES ==
  enum ImageListModelRoles{
      itemName = Qt::UserRole,
      itemSize,
      itemStatus
  };

public:// == CTOR ==
    ImageListModel( QObject* parent = nullptr );

public:
    void addItem(const ImageItem& aItem);
};
