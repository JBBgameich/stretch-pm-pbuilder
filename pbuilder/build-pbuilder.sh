#!/bin/bash

sudo pbuilder create --distribution stretch --mirror http://deb.debian.org/debian --basetgz stretch.tgz --save-after-login --save-after-exec
sudo pbuilder execute --basetgz stretch.tgz -- hooks/00-configure-apt.sh