# cvmfs-config-osg

## CVMFS configuration package for the Open Science Grid

This is the source for the CernVM File System (CVMFS) configuration
files for the Open Science Grid (OSG).  It includes packaging for
Redhat and Debian.

### Redhat

End-user documentation for Redhat systems can be found
[here](https://opensciencegrid.org/docs/worker-node/install-cvmfs/).

### Debian

For Debian, the End-user instructions are to install cvmfs from
[the cvmfs download page](https://cernvm.cern.ch/portal/filesystem/downloads)
and this package from
[github](https://github.com/opensciencegrid/cvmfs-config-osg/releases).
Then if you want to enable autofs, add the following contents
into /etc/auto.master.d/cvmfs.autofs:
```
/cvmfs /etc/auto.cvmfs
```
and restart autofs with
```
systemctl restart autofs
```
and also enable and start the cvmfs-config-osg service with:
```
systemctl enable cvmfs-config-osg
systemctl start cvmfs-config-osg
```
That service will start a daemon to make sure that the configuration
repository /cvmfs/config-osg.opensciencegrid.org stays mounted,
which is necessary to work around a Debian bug that causes autofs to
hang if a recursive automount is attempted.
