TEMPLATE	   = lib
CONFIG		  += warn_on
CONFIG		  -= qt
CONFIG		  -= win

# CONFIG    -= debug  # ist Release
CONFIG    -= release  # ist Debug

CONFIG      += staticlib

QMAKE_CXXFLAGS_WARN_ON += -Wno-unknown-pragmas

INCLUDEPATH  = ./Header

SOURCES		  += src/dl_dxf.cpp
SOURCES		  += src/dl_writer_ascii.cpp

debug{
  TARGET		   = dxflib_d
}
release{
  TARGET		   = dxflib_r
}

DESTDIR      = ../libs
