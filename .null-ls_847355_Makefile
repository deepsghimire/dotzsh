ZPLUG_HOME := ~/.zplug
all: install-plugin-manager copy-config init


install-plugin-manager: $(ZPLUG_HOME)
	git clone https://github.com/zplug/zplug $(ZPLUG_HOME)

copy-config:
	./link-files.sh


init:
	./init-config.sh
