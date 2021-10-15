QT += core gui widgets
TARGET = "Qt6Configurator"
TEMPLATE = app

QMAKE_POST_LINK += $$_PRO_FILE_PWD_/makeres.sh $$_PRO_FILE_PWD_ $$TARGET

INCLUDEPATH += ../../3rdparty/simplecrypt/

SOURCES += \
        main.cpp \
        settingsdialog.cpp \
        whitelistdialog.cpp \
        ../../3rdparty/simplecrypt/simplecrypt.cpp

HEADERS += \
        settingsdialog.h \
        whitelistdialog.h \
        config.h

FORMS += \
        settingsdialog.ui \
        whitelistdialog.ui

