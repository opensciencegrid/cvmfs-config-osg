# Debian-specific CVMFS configuration for LIGO

The files in this directory form the core of the CVMFS configuration for the LIGO
experiment for Debian-based hosts.

These were adapted from the following configuration page:
> https://wiki.ligo.org/LVCcomputing/SiteConfiguration

Sites or users looking to install and configure CVMFS should start 
This repository is meant for those building .deb packages.

RHEL (or similar) users should follow OSG's default documentation:
> https://twiki.grid.iu.edu/bin/view/Documentation/Release3/InstallCvmfs

## Enabling CVMFS automount config on boot

To enable the CVMFS automount point on boot, run:

```
systemctl enable cvmfs-config\\x2dosg.opensciencegrid.org.automount
systemctl enable cvmfs-ligo.osgstorage.org.automount
systemctl enable cvmfs-oasis.opensciencegrid.org.mount
```

This does *not* cause CVMFS to be mounted on boot.  It enables the automount point, meaning
that CVMFS will be mounted on first access attempt.
