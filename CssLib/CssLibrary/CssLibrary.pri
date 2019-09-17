#-------------------------------------------------
#
# Project created by QtCreator 2018-06-06T16:52:59
#
#-------------------------------------------------

QT += core gui widgets
QT += network sql printsupport #script xml  xmlpatterns
QT += multimedia multimediawidgets charts

SOURCES += \
        $$PWD/csslibrary.cpp

HEADERS += \
        $$PWD/csslibrary.h \
        $$PWD/csslibrary_global.h \
    $$PWD/aboutcss.h


unix {
    target.path = /usr/lib
    INSTALLS += target
}

FORMS += \
    $$PWD/aboutcss.ui

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


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../CssSpace/release/ -lCssSpace
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../CssSpace/debug/ -lCssSpaced

INCLUDEPATH += $$PWD/../CssSpace
DEPENDPATH += $$PWD/../CssSpace


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

