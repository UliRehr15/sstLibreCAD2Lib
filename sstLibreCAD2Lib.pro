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

SOURCES		+= ./lib/engine/rs_vector.cpp

OTHER_FILES += README.md

debug{
  TARGET		= sstLibreCadLib_d
}
release{
  TARGET		= sstLibreCadLib_r
}

DESTDIR     = ../libs

