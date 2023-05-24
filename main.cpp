#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QCommandLineParser>

#include "models/ImageListModel.hpp"


QString parse_command_line( int &argc, char *argv[] ){
    QCoreApplication app(argc, argv);
    QCoreApplication::setApplicationName("ImagePack");
    QCoreApplication::setApplicationVersion("1.0");

    QCommandLineParser parser;
    parser.setApplicationDescription("Image pack");
    parser.addHelpOption();
    parser.addVersionOption();

    QCommandLineOption dirOption( "d",
                                 QCoreApplication::translate("main", "/path/to/image/dir"),
                                 QCoreApplication::translate("main", "path"));

    parser.addOption( dirOption );
    parser.process( app );
    QString dir = app.applicationDirPath();

    if( parser.isSet( dirOption ) ){
        dir = parser.value( dirOption );
    }

    return dir;
}

int main(int argc, char *argv[]){
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QString imageDir = parse_command_line( argc, argv );
    qDebug() << "img dir:" << imageDir;
    QGuiApplication app(argc, argv);
    ImageListModel imgModel( imageDir );
//    imgModel.addItem( { "file1.bmp", 200, "none" } );
//    imgModel.addItem( { "file2.bmp", 202, "none" } );
//    imgModel.addItem( { "file3.bmp", 203, "converting" } );


    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty( "cppImgModel", &imgModel);
    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
