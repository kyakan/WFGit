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

