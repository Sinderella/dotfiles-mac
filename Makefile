all: fresh-install

help:
	@echo "make fresh-install"
	@echo "make install"
	@echo "make update"

update:
	./update.sh

fresh-install:
	./fresh-install.sh

install:
	./install.sh
