ifndef FAKEROOT
FAKEROOT=/tmp/tigera-wireguard-kvc/
endif

install:
	install -v -m 755 -d $(FAKEROOT)/root/etc/kvc/bin
	install -v -m 755 kmods-via-containers $(FAKEROOT)/root/etc/kvc/bin/
	install -v -m 755 -d $(FAKEROOT)/root/etc/kvc
	install -v -m 644 kmods-via-containers.conf $(FAKEROOT)/root/etc/kvc/
	install -v -m 755 -d $(FAKEROOT)/root/etc/systemd/system
	install -v -m 644 kmods-via-containers@.service $(FAKEROOT)/root/etc/systemd/system/
	install -v -m 755 -d $(FAKEROOT)/root/etc/kvc/lib/kvc
