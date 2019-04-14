PREFIX ?= /usr/local
BINPREFIX ?= $(PREFIX)/bin
LIBPREFIX ?= $(PREFIX)/lib

install:
	mkdir -p $(DESTDIR)$(BINPREFIX)
	cp -p zram-swap $(DESTDIR)$(BINPREFIX)
	mkdir -p $(DESTDIR)$(LIBPREFIX)/systemd/system
	cp -p zram-swap.service $(DESTDIR)$(LIBPREFIX)/systemd/system
	cp -p zram-swap-per-cpu.service $(DESTDIR)$(LIBPREFIX)/systemd/system

uninstall:
	rm -f $(DESTDIR)$(BINPREFIX)/zram-swap
	rm -f $(DESTDIR)$(LIBPREFIX)/systemd/system/zram-swap.service
	rm -f $(DESTDIR)$(LIBPREFIX)/systemd/system/zram-swap-per-cpu.service

.PHONY: install uninstall
