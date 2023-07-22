ZPLUG_HOME := ~/.zplug
.PHONY: all nstall-plugin-manager copy-config init
all: install-plugin-manager copy-config init


install-plugin-manager:
	git clone https://github.com/zplug/zplug $(ZPLUG_HOME)

copy-config:
	./link-files.sh


init:
	./init-config.sh
