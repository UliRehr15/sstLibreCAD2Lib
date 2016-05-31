TEMPLATE	= lib
CONFIG		+= warn_on
CONFIG    -= qt
CONFIG    -= windows
CONFIG += c++11

# CONFIG    -= debug  # ist RELEASE aktiv
CONFIG    -= release  # ist DEBUG aktiv

CONFIG    += staticlib

INCLUDEPATH = ./Header

INCLUDEPATH = ./Header

HEADERS  += ./Header/rs.h  \
            ./Header/rs_debug.h  \
            ./Header/rs_math.h   \
            ./Header/rs_vector.h

SOURCES		+= ./lib/engine/rs_vector.cpp  \
             ./lib/engine/rs.cpp

OTHER_FILES += README.md

debug{
  TARGET		= sstLibreCAD2Lib_d
}
release{
  TARGET		= sstLibreCAD2Lib_r
}

DESTDIR     = ../libs

