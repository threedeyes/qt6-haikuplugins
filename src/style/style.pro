TARGET  = qhaikustyle
PLUGIN_TYPE = styles
PLUGIN_CLASS_NAME = QHaikuStylePlugin
TEMPLATE = lib
load(qt_plugin)

QT = core gui widgets core-private gui-private widgets-private

CONFIG += plugin

LIBS += -lbe -lroot

INCLUDEPATH += ../platform

HEADERS += qhaikustyle.h
SOURCES += qhaikustyle.cpp
SOURCES += plugin.cpp

include(helper/helper.pri)

OTHER_FILES += haiku.json
