VOC = /opt/voc/bin/voc
BUILD=build
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir_path := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
current_dir := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))
DPS := $(mkfile_dir_path)/dps


all:
					mkdir -p $(BUILD)
					cd $(BUILD) && $(VOC) -s \
					$(mkfile_dir_path)/src/error.Mod \
					$(mkfile_dir_path)/src/model.Mod

get_deps:
	mkdir -p $(DPS)
	if [ -d $(DPS)/lists ]; then cd $(DPS)/lists; git pull; cd -; else cd $(DPS); git clone https://github.com/norayr/lists; cd -; fi
	if [ -d $(DPS)/opts ]; then cd $(DPS)/opts; git pull; cd -; else cd $(DPS); git clone https://github.com/norayr/opts; cd -; fi

clean:
					if [ -d "$(BUILD)" ]; then rm -rf $(BUILD); fi
