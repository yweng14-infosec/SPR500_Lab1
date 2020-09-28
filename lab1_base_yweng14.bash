#!/bin/bash

# show hostname
echo $HOSTNAME

# show disk/partition size, usage, and mount points
df -h

# show network devices(name)
nmcli device status

# show IP address, broadcast, and netmask for each active device
/sbin/ifconfig -a

# show OS version/release level, kernal version used
hostnamectl

# show security mode(SElinux status)
sestatus

# show firewall configuration
iptables -L

# list of active repositories
yum repolist enabled

# show number of software packages(rpm, deb, etc) installed
yum list installed | wc -l

# show name of software packages installed
yum list installed 

#show dns server configured(which dns server(s) will be used for the local resolver)
cat /etc/resolv.conf | grep nameserver

# show list of active shell users
cut -d: -f1 /etc/passwd

# show date the OS was first installed
rpm -qi basesystem | grep Date

# show hardware details:cpu,main memory size, swap memory configure,devices,etc
lscpu
fdisk -l
cat /proc/swaps
lshw -short -C disk

# show services current running
systemctl --type=service --state=running

# show services inistalled but not running
systemctl --type=service --state=exited

# show any other information/data you think that is important and necessary to have
date 
