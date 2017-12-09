# Connecting USB HUB

* Connect HUB data line to RPi USB port to make RPi master
* Connect HUB USB port to RPi micro usb to power RPi

See:

* https://raspberrypi.stackexchange.com/questions/57606/raspberry-pi-zero-refuses-to-detect-usb-hub-tried-multiple-hubs
* https://raspberrypi.stackexchange.com/questions/57014/does-a-usb-hub-work-with-raspberry-pi-zero

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


# Peripherals

For gpio command:

    sudo apt-get install wiringpi

# Volumes, USB drives

## USB drive

    sudo apt-get install lshw

    lsblk -a
    lsusb
    sudo lshw | less

    sudo mkdir /media/usbdrive_primary

## Mounting

    sudo mount -t auto /dev/sda1 /media/usb1/

fstab description in

    man 8 mount 

Allow any user to mount fs:

    % /etc/fstab
    /dev/sda1             /media/usb1     auto    uid=1000,gid=1000,user,rw 0   0

NOTE: adding this to fstab will cause the volume to mount on startup, but when
it is not there (i.e. it is uplugged) RPi will compain and _fail to boot_.

