#! /bin/sh

cd ${linux_root}
$xenomai_root/scripts/prepare-kernel.sh --arch=x86_64 --ipipe=${ipipe_patch}
cp ${linux_config} ${linux_root}/.config
