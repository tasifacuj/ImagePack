#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QCommandLineParser>
#include <QQuickWindow>

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
    // parse command line
    QString imageDir = parse_command_line( argc, argv );
    qDebug() << "img dir:" << imageDir;

    // construct image model
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    ImageListModel imgModel( imageDir );
    QQuickWindow* pQuickWindow = qobject_cast<QQuickWindow*>(engine.rootObjects().value(0));
    QObject::connect( &imgModel, SIGNAL( signalImagePackWarn( QString ) ), pQuickWindow ,SLOT( slotShowWarn(QString) ) );

    // load qml
    engine.rootContext()->setContextProperty( "cppImgModel", &imgModel);
    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
