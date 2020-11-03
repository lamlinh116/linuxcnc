# Folder structure:
./  
 \_repo  
 &nbsp;&nbsp;|_build  
 &nbsp;&nbsp;|_linux-->symlink to ../source/liunux-xxx  
 &nbsp;&nbsp;|_xenomai-->symlink to ../source/xenomai-xxx  
 &nbsp;&nbsp;|_linuxcnc-->symlink to ../source/linuxcnc-xxx  
 \_source  
 &nbsp;&nbsp;|_linux-xxx  
 &nbsp;&nbsp;|_xenomai-xxx  
 &nbsp;&nbsp;|_linuxcnc-xxx  
 &nbsp;&nbsp;|_ipipe-xxx.patch  
 &nbsp;&nbsp;|_config-xxx  
	
# Dependencies:
 Go to repo/build.  
 Check DEPS file.  
 
# Build and install xenomai
Go to repo/build  
 $ source xn-environment  
 $ ./prepare-linux-ipipe.sh  
 $ ./build-linux-ipipe.sh  
 $ ./build-xenomai.sh  
Install .deb file in source folder.  
 
# Build and install linuxcnc
Go to repo/build  
 $ source xn-environment  
 $ ./build-linuxcnc.sh  
Install .deb file in source folder  
