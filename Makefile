#!/usr/bin/make
# sh-helpers/Makefile
# Isabell Cowan (c) 2015
# https://github.com/Izzette/sh-helpers
#

PREFIX = shelp-
OBJS = configure $(PREFIX)connect

all : $(OBJS)
	echo "Makefile: Making for all ..."

configure :
	echo "Makefile: Configuring ..."
	./config

shelp-connect :
	
