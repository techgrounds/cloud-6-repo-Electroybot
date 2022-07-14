# LNX-01 - Installing a VM

## Introduction  

Linux, like Windows or MacOS, is an operating system. It manages the communication between the physical device (hardware) and all computer programs (software).
Linux is the most popular operating system for servers, because it is lightweight, stable, highly customizable, and free to use. Due to the open source licensing, everyone is allowed to build and distribute new versions of Linux.  

In Linux, the graphical user interface (GUI) is considered to be optional. You control it using a command line (CLI), typing in commands. It is important to get somewhat comfortable with the CLI. Although we will have a GUI, for now. That won’t always be the case.  

Using a virtual machine (VM), you can run a Linux machine within your own computer (an OS within an OS). A hypervisor will assign a part of your hardware to the virtual machine.  

During this course we will run a Linux distribution called CentOS 8, which is based on RedHat Enterprise Linux (RHEL).  

## Requirements    
- VirtualBox (hypervisor software) (https://www.virtualbox.org/)
- A CentOS iso file (virtual installation disc) (http://isoredirect.centos.org/centos/8/isos/x86_64/)

## Exercise  

- Install a CentOS 8 virtual machine on your laptop.
- Once installation and setup are complete, take a snapshot of the VM. This will act as a checkpoint in case you break the machine on accident (or on purpose).
- Go to the terminal in your VM and type ‘whoami’. The terminal should show your username  

Ikzelf heb Oracle VM Virtual Box geinstalleerd i.c.m. Ubuntu 20.04.3 en na de installatie van Ubuntu heb ik er een snapshot van gemaakt.
Vervolgens heb ik de terminal geopend en kijk aan..

![Gelukt!](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-01/Screenie%20whoami.PNG?raw=true)

