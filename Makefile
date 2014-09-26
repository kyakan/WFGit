install:
	if [ x$(DESTDIR) != x  ] ; then sudo mkdir -p $(DESTDIR) ; fi
	sudo cp -v usr/bin/wgit $(DESTDIR)/usr/bin/wgit
	sudo cp -v etc/bash_completion.d/wgit $(DESTDIR)/etc/bash_completion.d/
uninstall:
	sudo rm -v $(DESTDIR)/usr/bin/wgit
	sudo rm -v $(DESTDIR)/etc/bash_completion.d/wgit

