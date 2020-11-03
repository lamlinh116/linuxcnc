# linuxcnc
Folder structure:
./
 |_repo
   |_build
   |_linux-->symlink to ../source/liunux-xxx
   |_xenomai-->symlink to ../source/xenomai-xxx
   |_linuxcnc-->symlink to ../source/linuxcnc-xxx
 |_source
   |_linux-xxx
   |_xenomai-xxx
   |_linuxcnc-xxx
   |_ipipe-xxx.patch
   |_config-xxx
 
 * Dependencies:
 Go to repo/build
 Check DEPS file.
 
 * Build and install xenomai
 - Go to repo/build
 $ source xn-environment
 $ ./prepare-linux-ipipe.sh
 $ ./build-linux-ipipe.sh
 $ ./build-xenomai.sh
 - Install .deb file in source folder
 
 * Build and install linuxcnc
 - Go to repo/build
 $ source xn-environment
 $ ./build-linuxcnc.sh
  - Install .deb file in source folder
