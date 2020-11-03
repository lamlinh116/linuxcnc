#! /bin/sh

cd ${linux_root}
make menuconfig
make -j`nproc` bindeb-pkg

#cd ../
#mkdir -p deb/linux-ipipe
#mv *.buildinfo *.changes *.deb deb/linux-ipipe

