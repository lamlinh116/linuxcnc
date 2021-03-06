# Descriptions
This work is aimed for developing LinuxCNC on xenomai-3x enviroment.  

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
 &nbsp;&nbsp;|_emc2-build-xenomai-3x.patch  

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
 $ Copy emc2-build-xenomai-3x.patch from conf/ folder to linuxcnc folder   
 $ git apply emc2-build-xenomai-3x.patch  

Go to repo/build  
 $ source xn-environment  
 $ ./build-linuxcnc.sh  
Install .deb file in source folder 

# Tips for setup hardware LinuxCNC (x86)
 * Disable Hyper Threading  
 * Disable SMI  
 * Isolate cpu core from grub:  
&nbsp;&nbsp;&nbsp;$ sudo vi /etc/default/grub  
&nbsp;&nbsp;&nbsp;$ Add isolcpus=2,3 to GRUB_CMDLINE_LINUX_DEFAULT for disabling core 2,3  

# Reference links
Xenomai: https://gitlab.denx.de/Xenomai/xenomai/-/wikis/home  
LinuxCNC: https://github.com/LinuxCNC/linuxcnc  
Linux kernel archive: https://cdn.kernel.org/pub/linux/kernel/v4.x/  
