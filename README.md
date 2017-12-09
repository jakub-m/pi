
# Samba

    sudo apt-get install samba

Modify /etc/samba/smb.conf


Add system user and samba user


    adduser joe
    smbpasswd -a joe


See:

* https://www.cyberciti.biz/faq/adding-a-user-to-a-samba-smb-share/


Check status with:

	smbstatus

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

NOTE: adding this to fstab will cause the volume to mount on startup, but when
it is not there (i.e. it is uplugged) RPi will compain and _fail to boot_.

