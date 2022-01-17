# LNX-7 - Processes

## Introduction
Processes in Linux can be divided into three categories: Daemons, Services, and Programs.
A daemon runs in the background and is non-interactive. A Service responds to requests from programs. A service may be interactive. A program is run and used by users (e.g. Vim).

In order to connect to remote Linux machines (virtual or not), you can use ssh (secure shell). To make this connection to your machine possible, you’ll have to start the ssh service by starting the ssh daemon.

A process is an instance of running code. All code is stored in files somewhere on the system. In order to find these files, Linux will look in the $PATH variable (more about that in a later exercise). Every process has its own PID (Process ID) number.

## Requirements
Your CentOS VM

## Exercise

**- Start the ssh daemon.**  
Deze heb ik eerst geinstalleerd:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/01.png?raw=true)

Et voilà:
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/01%202.png?raw=true)

**- Find out the PID of the ssh daemon.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/02.png?raw=true)  

**- Find out how much memory the sshd is using.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/03.png?raw=true)

**- Stop or kill the sshd process.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/unnamed.png?raw=true)  

## Key terms

## Bronnen  

