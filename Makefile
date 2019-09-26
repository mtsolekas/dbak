PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
MANDIR = $(PREFIX)/share/man/man1
NAME = dbak

.PHONY: install uninstall

all:

install:
	gzip -c $(NAME).1 > $(NAME).1.gz
	install -m755 -d $(BINDIR)
	install -m755 -d $(MANDIR)
	install -m755 $(NAME) $(BINDIR)
	install -m644 $(NAME).1.gz $(MANDIR)
	rm $(NAME).1.gz

uninstall:
	rm $(BINDIR)/$(NAME)
	rm $(MANDIR)/$(NAME).1.gz
