NAME = scnprojectsetup
VERSION = 0.0.1
MAINTAINER = Sebastian Antonsen <sebastian@stormstudios.no>


BASE_DIR=dist
BUILD_ROOT=$(BASE_DIR)/$(NAME)_$(VERSION)

TAR_NAME=$(NAME)_$(VERSION)
SRC_DIR=src

all:

dist:
	install -d $(BUILD_ROOT)
	tar -zcvf $(BUILD_ROOT)/$(TAR_NAME).tar.gz $(SRC_DIR)