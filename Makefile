ZPLUG_HOME := ~/.zplug
.PHONY: all install-plugin-manager copy-config init
all: install-plugin-manager copy-config init


install-plugin-manager:
	git clone https://github.com/zplug/zplug $(ZPLUG_HOME) 2> /dev/null|| { [[ -d $(ZPLUG_HOME) ]] || echo $(ZPLUG_HOME) exists >&2 }

copy-config:
	./link-files.sh


init:
	./init-config.sh
