.POSIX:

ROOTDIR  = $$PWD

all:
	@if [ ! -d build ]; then \
		mkdir build;     \
	fi
	@cd build; voc -s \
	${ROOTDIR}/../src/error.Mod \
	${ROOTDIR}/../src/model.Mod

clean:
	rm -rf build
