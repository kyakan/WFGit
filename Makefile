HOSTPLATFORM:=$(shell uname -s)

ifeq (${HOSTPLATFORM},Darwin)

install:
	if [ x$(DESTDIR) != x  ] ; then sudo mkdir -p $(DESTDIR) ; fi
	sudo mkdir -p $(DESTDIR)/usr/local/share/wgit
	sudo cp README.md $(DESTDIR)/usr/local/share/wgit/
	sudo cp usr/bin/wgit $(DESTDIR)/usr/local/bin/wgit
	sudo cp etc/bash_completion.d/wgit $(DESTDIR)/usr/local/etc/bash_completion.d/
uninstall:
	sudo rm $(DESTDIR)/usr/local/bin/wgit
	sudo rm $(DESTDIR)/usr/local/etc/bash_completion.d/wgit
	sudo rm -r $(DESTDIR)/usr/local/share/wgit/



else ifeq (${HOSTPLATFORM},Linux)
install:
	if [ x$(DESTDIR) != x  ] ; then sudo mkdir -p $(DESTDIR) ; fi
	sudo mkdir -p $(DESTDIR)/usr/share/wgit
	sudo cp README.md $(DESTDIR)/usr/share/wgit/
	sudo cp usr/bin/wgit $(DESTDIR)/usr/bin/wgit
	sudo cp etc/bash_completion.d/wgit $(DESTDIR)/etc/bash_completion.d/
uninstall:
	sudo rm $(DESTDIR)/usr/bin/wgit
	sudo rm $(DESTDIR)/etc/bash_completion.d/wgit
	sudo rm -r $(DESTDIR)/usr/share/wgit/

else
all:
	@echo unable to install with ${HOSTPLATFORM}
endif

