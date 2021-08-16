ifndef FAKEROOT
FAKEROOT=/tmp/tigera-wireguard-kvc/
endif

install:
	install -v -m 755 -d $(FAKEROOT)/etc/kvc/bin
	install -v -m 755 kmods-via-containers $(FAKEROOT)/etc/kvc/bin/
	install -v -m 755 -d $(FAKEROOT)/etc/kvc
	install -v -m 644 kmods-via-containers.conf $(FAKEROOT)/etc/kvc/
	install -v -m 755 -d $(FAKEROOT)/etc/systemd/system
	install -v -m 644 kmods-via-containers@.service $(FAKEROOT)/etc/systemd/system/
	install -v -m 755 -d $(FAKEROOT)/etc/kvc/lib/kvc
