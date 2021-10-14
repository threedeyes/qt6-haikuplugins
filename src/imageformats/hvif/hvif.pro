TARGET  = qhvif
PLUGIN_TYPE = imageformats
load(qt_plugin)

QT += core gui core-private

LIBS += -lbe -ltranslation -ltracker

CONFIG += plugin

SOURCES =	qhvifplugin.cpp \
    		qhvifhandler.cpp

HEADERS =	qhvifplugin.h \
    		qhvifhandler.h

OTHER_FILES += qhvifplugin.json
