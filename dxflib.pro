TEMPLATE	   = lib
CONFIG		  += warn_on
CONFIG		  -= qt
CONFIG		  -= win

# CONFIG    -= debug  # ist Release
CONFIG    -= release  # ist Debug

CONFIG      += staticlib

QMAKE_CXXFLAGS_WARN_ON += -Wno-unknown-pragmas

INCLUDEPATH  = ./Header

HEADERS = \
    src/dl_attributes.h \
    src/dl_codes.h \
    src/dl_creationadapter.h \
    src/dl_creationinterface.h \
    src/dl_dxf.h \
    src/dl_entities.h \
    src/dl_exception.h \
    src/dl_extrusion.h \
    src/dl_writer.h \
    src/dl_writer_ascii.h


SOURCES		  += src/dl_dxf.cpp
SOURCES		  += src/dl_writer_ascii.cpp


debug{
  TARGET		   = dxflib_d
}
release{
  TARGET		   = dxflib_r
}

DESTDIR      = ../libs

DEFINES += DXFLIB_LIBRARY


