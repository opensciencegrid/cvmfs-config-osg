# created by obsupdate.sh, do not edit by hand
Debtransform-Tar: cvmfs-config-osg-2.5.tar.gz
Format: 1.0
Version: 2.5.1
Binary: cvmfs-config-osg
Source: cvmfs-config-osg
Maintainer: Dave Dykstra <dwd@fnal.gov>
Section: utils
Priority: optional
Standards-Version: 3.9.6
Build-Depends: debhelper (>= 9)
Homepage: http://github.com/opensciencegrid/cvmfs-config-osg

Package: cvmfs-config-osg
Architecture: all
Depends: ${misc:Depends}
Provides: cvmfs-config
Conflicts: cvmfs-config
Description: CernVM File System configuration for Open Science Grid
 The CernVM File System is a client for accessing remote file systems
 using HTTP. This package provides the necessary configuration for
 accessing filesystems maintained by the Open Science Grid.
Files:
  ffffffffffffffffffffffffffffffff 99999 file1
  ffffffffffffffffffffffffffffffff 99999 file2
