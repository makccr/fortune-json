PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

.PHONY: install uninstall

install:
	install -Dm755 fortune-json $(DESTDIR)$(BINDIR)/fortune-json

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/fortune-json
