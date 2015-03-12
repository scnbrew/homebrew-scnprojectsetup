NAME = scnprojectsetup
VERSION = 1.4.6
MAINTAINER = Sebastian Antonsen <sebastian@stormstudios.no>

BASE_DIR=dist
BUILD_ROOT=$(BASE_DIR)/$(NAME)_$(VERSION)

TAR_NAME=$(NAME)_$(VERSION)
SRC_DIR=src
FILES= \
config.json \
scnprojectsetup

prefix=/usr
BIN_DIR=${prefix}/bin
INSTALL_DIR=$(BIN_DIR)


all:TEST="test"
all:
	@echo $(TEST)

install:
	install -d $(INSTALL_DIR)
	install -m 644 $(FILES) $(INSTALL_DIR)

pythonversion:
	sed -i.tmp "s/self\.version = '.....'/self\.version = '$(VERSION)'/" $(SRC_DIR)/$(NAME)
	rm $(SRC_DIR)/$(NAME).tmp
tar:
	install -d $(BUILD_ROOT)

	cp Makefile $(SRC_DIR)
	tar -zcvf $(BUILD_ROOT)/$(TAR_NAME).tar.gz $(SRC_DIR)
	rm $(SRC_DIR)/Makefile

brew:HASH=$(shell openssl sha1 $(BUILD_ROOT)/$(TAR_NAME).tar.gz | tail -c 41)
brew:
	sed -i.tmp "s/sha1.*/sha1 \"$(HASH)\"/g" $(NAME).rb
	sed -i.tmp "/url/s/scnprojectsetup_...../scnprojectsetup_$(VERSION)/g" $(NAME).rb
	rm $(NAME).rb.tmp

distclean:
	if [ -d ./dist ]; then rm -r dist; fi

dist:	distclean pythonversion tar brew

	install -d ../dist
	cp $(BUILD_ROOT)/$(TAR_NAME).tar.gz ../dist
