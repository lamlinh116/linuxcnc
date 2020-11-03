# Folder structure:
./  
 |_repo  
 &nbsp;&nbsp;|_build  
 &nbsp;&nbsp;|_linux-->symlink to ../source_folder/liunux-xxx  
 &nbsp;&nbsp;|_xenomai-->symlink to ../source_folder/xenomai-xxx  
 &nbsp;&nbsp;|_linuxcnc-->symlink to ../source_folder/linuxcnc-xxx  
 |_source_folder
 &nbsp;&nbsp;|_linux/linux-xxx  
 &nbsp;&nbsp;|_xenomai/xenomai-xxx  
 &nbsp;&nbsp;|_emc2/linuxcnc-xxx  
 |_conf  
 &nbsp;&nbsp;|_ipipe-xxx.patch  
 &nbsp;&nbsp;|_config-xxx  

Symlink can be done simply by: ln -sf 'source_folder' 'symlink_name'  
	
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
Need to apply some patch to avoid error when compile.
 $ Go to linuxcnc folder 
 $ Copy emc2-build.patch from conf/ folder to linuxcnc folder   
 $ git apply emc2-build.patch  

Go to repo/build  
 $ source xn-environment  
 $ ./build-linuxcnc.sh  
Install .deb file in source folder  
