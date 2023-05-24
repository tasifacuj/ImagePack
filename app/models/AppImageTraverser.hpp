#pragma once

#include <QObject>
#include <QString>

class AppImageTraverser : public QObject{
    Q_OBJECT
public:// == TYPES ==
    static constexpr int ENCODING = 0;
    static constexpr int DECODING = 1;
    static constexpr int NONE = 2;
    static constexpr int ERROR = 3;

public:
    AppImageTraverser( QObject* parent = nullptr ) : QObject( parent ){}
signals:
    void signalStatusEncodeChanged( int status, QString const& filePath );
    void signalStatusDecodeChanged( int status, QString const& filePath );
public slots:
    void slotEncode( QString const& filePath );
    void slotDecode( QString const& filePath );
};
