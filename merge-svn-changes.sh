#!/bin/bash
# Stupidly simple script to merge changes internally, since
# I import from ClamAV SVN tree, add my own changes, then move
# it over to our local tree on google code.
# Ugly hack, but it works!
# -- Brielle Bruns



MASTERDIR=/usr/src/clamav-classic/trunk
SVNWORKINGDIR=/cygdrive/c/projects/google/clamav-win32
make clean
cd $SVNWORKINGDIR
diff -urN -x .svn -x autom4te.cache $SVNWORKINGDIR \
	$MASTERDIR \
	| patch -p5

