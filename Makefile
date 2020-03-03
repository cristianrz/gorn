all: gorun

gorun:
	shellcheck gorun.sh
	cp gorun.sh gorun
	chmod a+x gorun

install:
	cp gorun ${HOME}/bin
