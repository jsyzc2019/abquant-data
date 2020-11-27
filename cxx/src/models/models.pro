TARGET = abqmodel
TEMPLATE = lib
CONFIG += shared c++17 x86_64
QT += sql qml
QT -= gui
DEFINES += TF_DLL
DESTDIR = $$PWD/../../../lib
include(../../abqbase.pri)
# INCLUDEPATH += ../helpers sqlobjects mongoobjects
# DEPENDPATH  += ../helpers sqlobjects mongoobjects
LIBS += -L$$PWD/../../../lib -labqhelper
MOC_DIR = .obj/
OBJECTS_DIR = .obj/

HEADERS += mongoobjects/emconceptbaseobject.h
HEADERS += emconceptbase.h
SOURCES += emconceptbase.cpp
HEADERS += mongoobjects/indexdayobject.h
HEADERS += indexday.h
SOURCES += indexday.cpp
HEADERS += mongoobjects/indexminobject.h
HEADERS += indexmin.h
SOURCES += indexmin.cpp
HEADERS += mongoobjects/stockdayobject.h
HEADERS += stockday.h
SOURCES += stockday.cpp
HEADERS += mongoobjects/stockminobject.h
HEADERS += stockmin.h
SOURCES += stockmin.cpp
HEADERS += mongoobjects/stockxdxrobject.h
HEADERS += stockxdxr.h
SOURCES += stockxdxr.cpp
