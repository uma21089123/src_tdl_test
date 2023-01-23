sudo lsblk
sudo fdisk -l
sudo fdisk /dev/xvdf
sudo lsblk
#sudo mke2fs /dev/xvdf1
sudo mkdir /var
sudo mount /dev/xvdf1 /var
sudo lsblk
sudo sed -i -e '$a /dev/xvdf1 /var ext2 defaults 1 2' /etc/fstab
