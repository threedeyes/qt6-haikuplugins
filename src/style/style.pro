TARGET  = qhaikustyle
PLUGIN_TYPE = styles
PLUGIN_CLASS_NAME = QHaikuStylePlugin
load(qt_plugin)

QT = core gui widgets core-private gui-private widgets-private

LIBS += -lbe -lroot

INCLUDEPATH += ../platform

HEADERS += qhaikustyle.h
SOURCES += qhaikustyle.cpp
SOURCES += plugin.cpp

include(helper/helper.pri)

OTHER_FILES += haiku.json
