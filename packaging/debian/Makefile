#!/usr/bin/make -f

# This make file takes care of installing the files

all: # nothing to build

install:
	mkdir -p $(DESTDIR)/etc/cvmfs/default.d \
	  $(DESTDIR)/etc/cvmfs/config.d \
	  $(DESTDIR)/etc/cvmfs/keys/opensciencegrid.org \
	  $(DESTDIR)/lib/systemd/system \
	  $(DESTDIR)/lib/systemd/system/autofs.service.wants \
	  $(DESTDIR)/usr/sbin
	cp 60-osg.conf $(DESTDIR)/etc/cvmfs/default.d
	cp config-osg.opensciencegrid.org.conf $(DESTDIR)/etc/cvmfs/config.d
	cp opensciencegrid.org.pub $(DESTDIR)/etc/cvmfs/keys/opensciencegrid.org
	cp cvmfs-config-osg.service $(DESTDIR)/lib/systemd/system
	ln -s ../cvmfs-config-osg.service $(DESTDIR)/lib/systemd/system/autofs.service.wants/cvmfs-config-osg.service
	cp cvmfs-config-osgd $(DESTDIR)/usr/sbin
