TEMPLATE	= lib
CONFIG		+= warn_on
CONFIG    += qt
CONFIG    += windows
CONFIG += c++11

# CONFIG    -= debug  # ist RELEASE aktiv
CONFIG    -= release  # ist DEBUG aktiv

CONFIG    += staticlib

INCLUDEPATH +=  ../boost_1_61_0
INCLUDEPATH +=  ../muparser-2.2.5/include
INCLUDEPATH +=  ./Header

# INCLUDEPATH = ./Header

HEADERS  += ./Header/rs.h  \
            ./Header/rs_debug.h  \
            ./Header/rs_math.h   \
            ./Header/rs_vector.h \
            ./Header/rs_color.h \
            ./Header/rs_flags.h

SOURCES		+= ./lib/engine/rs_vector.cpp  \
             ./lib/engine/rs.cpp \
             ./lib/engine/lc_rect.cpp \
             ./lib/engine/rs_color.cpp \
             ./lib/engine/rs_flags.cpp \
             ./lib/debug/rs_debug.cpp \
             ./lib/math/rs_math.cpp

OTHER_FILES += README.md

debug{
  TARGET		= sstLibreCAD2Lib_d
}
release{
  TARGET		= sstLibreCAD2Lib_r
}

DESTDIR     = ../libs

