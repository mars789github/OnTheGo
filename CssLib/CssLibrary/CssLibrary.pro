#-------------------------------------------------
#
# Project created by QtCreator 2018-06-06T16:52:59
#
#-------------------------------------------------

QT += core gui widgets
QT += network sql #script xml  xmlpatterns
QT += multimedia multimediawidgets charts

greaterThan(QT_MAJOR_VERSION, 4): QT += printsupport

TARGET = CssLibrary
TEMPLATE = lib

DEFINES += CSSLIBRARY_LIBRARY

CONFIG(debug, debug|release) {
    TARGET = CssLibraryd
}
CONFIG(release, debug|release) {
    TARGET = CssLibrary
}

win32 {
    MOC_DIR = tmp-win32
    UI_DIR = tmp-win32
    UI_HEADERS_DIR = tmp-win32
    UI_SOURCES_DIR = tmp-win32
    OBJECTS_DIR = tmp-win32
    RCC_DIR = tmp-win32
}

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        csslibrary.cpp \
    cssappconfig.cpp \
    cssdatabaseconfig.cpp

HEADERS += \
        csslibrary.h \
        csslibrary_global.h \ 
    aboutcss.h  \
    cssappconfig.h \
    cssdatabaseconfig.h


unix {
    target.path = /usr/lib
    INSTALLS += target
}

FORMS += \
    aboutcss.ui \
    cssappconfig.ui \
    cssdatabaseconfig.ui


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssCore/release/ -lCssCore
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssCore/debug/ -lCssCored
else:unix: LIBS += -L$$PWD/../CssCore/ -lCssCore

INCLUDEPATH += $$PWD/../CssCore
DEPENDPATH += $$PWD/../CssCore

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssGui/release/ -lCssGui
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssGui/debug/ -lCssGuid
else:unix: LIBS += -L$$PWD/../CssGui/ -lCssGui

INCLUDEPATH += $$PWD/../CssGui
DEPENDPATH += $$PWD/../CssGui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssSpace/release/ -lCssSpace
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssSpace/debug/ -lCssSpaced
else:unix: LIBS += -L$$PWD/../CssSpace/ -lCssSpace

INCLUDEPATH += $$PWD/../CssSpace
DEPENDPATH += $$PWD/../CssSpace

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssSql/release/ -lCssSql
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssSql/debug/ -lCssSqld
else:unix: LIBS += -L$$PWD/../CssSql/ -lCssSql

INCLUDEPATH += $$PWD/../CssSql
DEPENDPATH += $$PWD/../CssSql


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssPrint/release/ -lCssPrint
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssPrint/debug/ -lCssPrintd
else:unix: LIBS += -L$$PWD/../CssPrint/ -lCssPrint

INCLUDEPATH += $$PWD/../CssPrint
DEPENDPATH += $$PWD/../CssPrint


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssCharts/release/ -lCssCharts
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssCharts/debug/ -lCssChartsd

INCLUDEPATH += $$PWD/../CssCharts
DEPENDPATH += $$PWD/../CssCharts


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssMultimedia/release/ -lCssMultiMedia
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssMultiMedia/debug/ -lCssMultiMediad

INCLUDEPATH += $$PWD/../CssMultiMedia
DEPENDPATH += $$PWD/../CssMultiMedia

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssNetWork/release/ -lCssNetwork
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssNetwork/debug/ -lCssNetworkd

INCLUDEPATH += $$PWD/../CssNetwork
DEPENDPATH += $$PWD/../CssNetwork

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssMaths/release/ -lCssMaths
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssMaths/debug/ -lCssMathsd

INCLUDEPATH += $$PWD/../CssMaths
DEPENDPATH += $$PWD/../CssMaths

RESOURCES += \
    res.qrc

