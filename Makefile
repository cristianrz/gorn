DEST = ${HOME}

all: gorn

gorn:
	@shellcheck gorn.sh
	@cp gorn.sh gorn
	@chmod a+x gorn

install:
	@cp gorn $(DEST)/bin

uninstall:
	@rm -f $(DEST)/bin/gorn

clean:
	@rm -f gorn
