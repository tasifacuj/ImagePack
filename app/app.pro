QT += quick

TARGET = ImagePack

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        ImageListObserver.cpp \
        main.cpp \
        models/AppImageTraverser.cpp \
        models/ImageListModel.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    ImageListObserver.hpp \
    models/AppImageTraverser.hpp \
    models/ImageItem.hpp \
    models/ImageListModel.hpp

LIBS += -L$$OUT_PWD/../3rdParty/img_traverse/src -limg_traverse


INCLUDEPATH += $$PWD/../3rdParty/img_traverse/src

DISTFILES += \
     $$PWD/../etc/test-image-2-gs.bmp


defineTest(copyToDestDir) {
    files = $$1
    dir = $$2

    for(file, files) {
        QMAKE_POST_LINK += $$QMAKE_COPY -r $$shell_quote($$file) $$shell_quote($$dir) $$escape_expand(\\n\\t)
    }

    export(QMAKE_POST_LINK)
}

copyToDestDir($$DISTFILES, $$OUT_PWD)
