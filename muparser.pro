TEMPLATE	= lib
CONFIG		+= warn_on
CONFIG    -= qt
CONFIG    -= windows

# CONFIG    -= debug  # ist RELEASE aktiv
CONFIG    -= release  # ist DEBUG aktiv

CONFIG    += staticlib

INCLUDEPATH = ./include

# SOURCES		+= str1_lib1.cpp
HEADERS		+= ./include/muParser.h

SOURCES		+= ./src/muParser.cpp  \
             ./src/muParserBase.cpp \
             ./src/muParserBytecode.cpp \
             ./src/muParserCallback.cpp \
             ./src/muParserDLL.cpp \
             ./src/muParserError.cpp \
             ./src/muParserInt.cpp \
             ./src/muParserTest.cpp \
             ./src/muParserTokenReader.cpp

OTHER_FILES += readme.txt

debug{
  TARGET		= muParser_d
}
release{
  TARGET		= muParser_r
}

DESTDIR     = ../libs

