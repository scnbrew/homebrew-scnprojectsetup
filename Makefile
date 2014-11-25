NAME = scnprojectsetup
VERSION = 0.0.3
MAINTAINER = Sebastian Antonsen <sebastian@stormstudios.no>

BASE_DIR=dist
BUILD_ROOT=$(BASE_DIR)/$(NAME)_$(VERSION)

TAR_NAME=$(NAME)_$(VERSION)
SRC_DIR=$(NAME)
FILES= \
__init__.py \
config.json \
scnprojectsetup.py

prefix=/usr
BIN_DIR=${prefix}/bin
INSTALL_DIR=$(BIN_DIR)


all:TEST="test"
all:
	@echo $(TEST)

install:
	install -d $(INSTALL_DIR)
	install -m 644 $(addprefix $(NAME)/,$(FILES)) $(INSTALL_DIR)

	# ln -s $(INSTALL_DIR)/$(NAME).py $(BIN_DIR)/$(NAME)
	# chmod +x $(BIN_DIR)/$(NAME)

tar:
	install -d $(BUILD_ROOT)

	cp Makefile $(SRC_DIR)
	tar -zcvf $(BUILD_ROOT)/$(TAR_NAME).tar.gz $(SRC_DIR)
	rm $(SRC_DIR)/Makefile

brew:HASH=$(shell openssl sha1 $(BUILD_ROOT)/$(TAR_NAME).tar.gz | tail -c 41)
brew:
	sed -i.tmp "s/sha1.*/sha1 \"$(HASH)\"/g" $(NAME).rb
	rm $(NAME).rb.tmp

distclean:
	if [ -d ./dist ]; then rm -r dist; fi

dist:	distclean tar brew

	install -d ../dist
	cp $(BUILD_ROOT)/$(TAR_NAME).tar.gz ../dist

