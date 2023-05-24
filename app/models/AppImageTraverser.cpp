// project
#include "AppImageTraverser.hpp"

// img_traverse
#include "ImgTraverse.hpp"

// qt
#include <QImage>
#include <QDebug>

void AppImageTraverser::slotEncode( QString const& filePath ){
    qDebug() << "Encoding" << filePath;
    emit signalStatusEncodeChanged( ENCODING, filePath );
    QImage img( filePath );

    if( img.isNull() ){
        qDebug() << "Invalid image" << filePath;
        emit signalStatusEncodeChanged( ERROR, filePath );
        return;
    }

    const int H = img.height();
    const int W = img.width();
    qDebug() << ">>> img has" << img.format() << "fmt and" << img.sizeInBytes() << "sizeInBytes" << "w =" << W << ", h =" << H;
    unsigned char *imgData = img.bits();
    img_traverse::RawImageData rawData;
    rawData.width = W;
    rawData.height = H;
    rawData.data = imgData;
    int dotPos = filePath.lastIndexOf( "." );
    QString ext = filePath.mid( dotPos + 1 );
    QStringRef subNameRef = filePath.midRef(0, dotPos);
    QString packedFilePath = subNameRef + "_packed.barch";

    img_traverse::PackedData pd = img_traverse::ImageHelper::pack( rawData, ext.toStdString() );
    img_traverse::Serializer::write( pd, packedFilePath.toStdString() );
    emit signalStatusEncodeChanged( NONE, filePath );
}

void AppImageTraverser::slotDecode( QString const& filePath ){
    qDebug() << "Dencoding" << filePath;
    emit signalStatusDecodeChanged( DECODING, filePath );
    img_traverse::PackedData pd;

    if( !img_traverse::Serializer::read( pd, filePath.toStdString() ) ){
        qDebug() << "Failed to read" << filePath;
        emit signalStatusDecodeChanged( ERROR, filePath );
        return;
    }

    img_traverse::RawImageData restoredImage{ pd.width, pd.height, nullptr };

    if( !img_traverse::ImageHelper::unpack( restoredImage, pd ) ){
        qDebug() << "Failed to unpack" << filePath;
        emit signalStatusDecodeChanged( ERROR, filePath );
    }

    QImage image( restoredImage.data , restoredImage.width, restoredImage.height, QImage::Format_Grayscale8);
    int dotPos = filePath.lastIndexOf( "." );
    QStringRef subNameRef = filePath.midRef(0, dotPos);
    QString unpackedFilePath = subNameRef + "_unpacked." + pd.ext.c_str();


    if( !image.save( unpackedFilePath ) ){
        qDebug() << "Failed to save" << unpackedFilePath;
        emit signalStatusDecodeChanged( ERROR, filePath );
    }
}
