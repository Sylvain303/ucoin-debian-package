#!/bin/bash
#
# initialize the new packaqe
#
# Helpfull to replay the building process.
#

echo "this is not a valid script yet, DONOT RUN!"
exit 1

su - sylvain
# already cloned git
cd ucoin-debian-package
version=0.12.10
ucoinp=ucoin-$version
export DEBFULLNAME="Sylvain Viart"
export DEBEMAIL="sylvain@opensource-expert.com"

# create versioned package containing floder
mkdir $ucoinp
cd $ucoinp
# not native
dh_make --native

#Type of package: single binary, indep binary, multiple binary, library, kernel module, kernel patch?
# [s/i/m/l/k/n] s
#
# Maintainer name  : Sylvain Viart builder
# Email-Address    : sylvain@unknown 
# Date             : Wed, 23 Dec 2015 18:11:21 +0100
# Package Name     : ucoin
# Version          : 0.12.10
# License          : gpl3
# Type of Package  : Single
#
# Currently there is no top level Makefile. This may require additional tuning.
# Done. Please edit the files in the debian/ subdirectory now. You should also
# check that the ucoin Makefiles install into $DESTDIR and not in / .
#

