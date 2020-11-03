#! /bin/sh

cd ${linuxcnc_root}
cd debian
./configure uspace
cd -
dpkg-buildpackage -b -uc

