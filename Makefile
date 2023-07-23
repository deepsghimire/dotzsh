ZPLUG_HOME := ~/.antidote
.PHONY: all install-plugin-manager copy-config init
all: install-plugin-manager copy-config init


install-plugin-manager:
	git clone --depth=1 https://github.com/mattmc3/antidote.git $(ZPLUG_HOME)

copy-config:
	./link-files.sh


init:
	./init-config.sh
