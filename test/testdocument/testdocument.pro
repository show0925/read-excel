
TEMPLATE = lib
TARGET = testdocument
DESTDIR = ../../lib
CONFIG += staticlib
QT -= gui core

HEADERS += document.hpp

SOURCES += document.cpp

INCLUDEPATH += . $$PWD/../../
DEPENDPATH += . $$PWD/../../

unix|win32: LIBS += -L$$OUT_PWD/../../lib/ -lExcel

win32:!win32-g++: PRE_TARGETDEPS += $$OUT_PWD/../../lib/Excel.lib
else:unix|win32-g++: PRE_TARGETDEPS += $$OUT_PWD/../../lib/libExcel.a
