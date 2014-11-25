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
scnprojectsetup.py

prefix=/usr
BIN_DIR=${prefix}/bin
INSTALL_DIR=$(BIN_DIR)

all:

install:
	install -d $(INSTALL_DIR)
	install -m 644 $(addprefix src/,$(FILES)) $(INSTALL_DIR)

	# ln -s $(INSTALL_DIR)/$(NAME).py $(BIN_DIR)/$(NAME)
	# chmod +x $(BIN_DIR)/$(NAME)

dist:
	install -d $(BUILD_ROOT)
	tar -zcvf $(BUILD_ROOT)/$(TAR_NAME).tar.gz $(SRC_DIR)