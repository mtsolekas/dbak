PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1
NAME = dbak
VERSION= 1.1

.PHONY: install uninstall

all:

install:
	sed -i.bkp 's/__VERSION__/$(VERSION)/g' $(NAME)
	sed -i.bkp 's/__VERSION__/$(VERSION)/g' $(NAME).1
	gzip -c $(NAME).1 > $(NAME).1.gz
	install -m755 -d $(BINDIR)
	install -m755 -d $(MANDIR)
	install -m755 $(NAME) $(BINDIR)
	install -m644 $(NAME).1.gz $(MANDIR)
	rm $(NAME).1.gz
	mv $(NAME).bkp $(NAME)
	mv $(NAME).1.bkp $(NAME).1

uninstall:
	rm $(BINDIR)/$(NAME)
	rm $(MANDIR)/$(NAME).1.gz
