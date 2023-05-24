TEMPLATE = subdirs

SUBDIRS +=  app\
            libs

libs.subdir = 3rdParty/img_traverse

app.depends = libs

target.path = $$HOME/bin
INSTALLS += target
