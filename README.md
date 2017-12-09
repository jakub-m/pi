
# Samba

    sudo apt-get install samba

Modify /etc/samba/smb.conf

# USB drive

    sudo apt-get install lshw

    lsblk -a
    lsusb
    sudo lshw | less

    sudo mkdir /media/usbdrive_primary

# Peripherals

For gpio command:

    sudo apt-get install wiringpi

# Mounting

fstab description in

    man 8 mount 

Allow any user to mount fs:

    % /etc/fstab

    /dev/sda1             /media/usb1     auto    uid=1000,gid=1000,user,rw 0   0
