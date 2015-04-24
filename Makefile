#!/usr/bin/make -f

# sh-helpers/Makefile
# Isabell Cowan (c) 2015
# https://github.com/Izzette/sh-helpers

TARGETS = shelp-connect
VERBOSE = 0
CFG_FLAGS = --verbose=$(VERBOSE)
BASE_DIR = $(shell pwd)/
CFG_SCRIPT = $(BASE_DIR)configure
CFG_DIR = $(BASE_DIR)configure.d/
INSTALL_CFG_DIR = /usr/local/etc/sh-helpers/
SCRIPTS_DIR = $(BASE_DIR)scripts/
BUILD_DIR = $(BASE_DIR)build/
INSTALL_BUILD_DIR = /usr/bin/

all: $(TARGETS)

shelp-connect: connect.conf
	mkdir -p $(BUILD_DIR)
	./replace -v vars="CFG_PATH=\"$(CFG_DIR)connect/connect.conf\"" $(SCRIPTS_DIR)connect/connect > $(BUILD_DIR)shelp-connect
	chmod +x $(BUILD_DIR)shelp-connect

connect.conf:
	mkdir -p $(CFG_DIR)connect
	$(CFG_SCRIPT) $(CFG_FLAGS) connect
	./replace -v vars="DEFAULTS_PATH=\"$(CFG_DIR)connect/defaults.conf\"" $(CFG_DIR)connect/connect.conf > .tmp
	mv .tmp $(CFG_DIR)connect/connect.conf

install: connect-install
	
connect-install:
	mkdir -p $(INSTALL_CFG_DIR)connect/
	cp $(CFG_DIR)connect/defaults.conf $(INSTALL_CFG_DIR)connect/defaults.conf
	./replace -v vars="DEFAULTS_PATH=\"$(INSTALL_CFG_DIR)connect/defaults.conf\"" $(CFG_DIR)connect/connect.conf > $(INSTALL_CFG_DIR)connect/connect.conf
	./replace -v vars="CFG_PATH=\"$(INSTALL_CFG_DIR)connect/connect.conf\"" $(BUILD_DIR)shelp-connect > $(INSTALL_BUILD_DIR)shelp-connect
	chmod +x $(INSTALL_BUILD_DIR)shelp-connect

clean:
	rm -rf $(CFG_DIR)
	rm -rf $(BUILD_DIR)
