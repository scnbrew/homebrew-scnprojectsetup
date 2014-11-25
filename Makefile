NAME = scnprojectsetup
VERSION = 0.0.1
MAINTAINER = Sebastian Antonsen <sebastian@stormstudios.no>


BASE_DIR=dist
BUILD_ROOT=$(BASE_DIR)/$(NAME)_$(VERSION)

TAR_NAME=$(NAME)_$(VERSION)
SRC_DIR=src
FILES= \
__init__.py \
config.json \
projectsetup.py

prefix=/usr
BIN_DIR=${prefix}/bin
INSTALL_DIR=$(BIN_DIR)/scnprojectsetup

all:

install:
	install -d $(INSTALL_DIR)
	install -m 644 $(addprefix src/,$(FILES)) $(INSTALL_DIR)

	ln -s $(INSTALL_DIR)/projectsetup.py $(BIN_DIR)/projectsetup
	chmod +x $(BIN_DIR)/projectsetup

dist:
	install -d $(BUILD_ROOT)
	tar -zcvf $(BUILD_ROOT)/$(TAR_NAME).tar.gz $(SRC_DIR)