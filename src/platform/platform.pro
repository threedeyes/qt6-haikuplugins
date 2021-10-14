TARGET  = qhaiku
PLUGIN_TYPE = platforms
PLUGIN_CLASS_NAME = QHaikuExpIntegrationPlugin
load(qt_plugin)

QT += widgets-private core-private gui-private

LIBS += -lbe -lroot -ltracker -lgame

CONFIG += link_pkgconfig
PKGCONFIG += freetype2

QMAKE_USE_PRIVATE += freetype

INCLUDEPATH += ../../3rdparty/simplecrypt/

SOURCES =   main.cpp \
            qhaikuintegration.cpp \
            qhaikuapplication.cpp \
            qhaikuwindow.cpp \
            qhaikucommon.cpp \
            qhaikutheme.cpp \
            qhaikusystemtrayicon.cpp \
            qhaikuclipboard.cpp \
            qhaikuplatformdialoghelpers.cpp \
            qhaikuplatformfontdatabase.cpp \
            qhaikusystemlocale.cpp \
            qhaikuview.cpp \
            qhaikuservices.cpp \
            qhaikucursor.cpp \
            ../../3rdparty/simplecrypt/simplecrypt.cpp

HEADERS =   qhaikuintegration.h \
			qhaikuapplication.h \
            qhaikuwindow.h \
            qhaikucommon.h \
            qhaikutheme.h \
            qhaikusystemtrayicon.h \
            qhaikuclipboard.h \
            qhaikuplatformdialoghelpers.h \
            qhaikusystemlocale.h \
            qhaikuview.h \
            qhaikuservices.h \
            qhaikucursor.h

OTHER_FILES += haiku.json
