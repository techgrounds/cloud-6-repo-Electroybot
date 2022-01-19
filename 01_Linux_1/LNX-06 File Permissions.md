# LNX-06 - File Permissions

## Introduction
Every file in Linux contains a set of permissions. There are separate permissions for reading, writing, and executing files (rwx). There’s also three types of entities that can have different permissions: the owner of the file, a group, and everyone else. Root does not need permissions to read, write or execute a file.

You can view a file’s permissions by creating a long listing. A file’s permissions, as well as its owner and group, can be changed as well.
Any user listed in /etc/passwd can be assigned as owner of a file.
Any group listed in /etc/group can be assigned as the group of a file.

## Requirements
Your CentOS VM

## Exercise
**- Create a text file.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/01.png?raw=true)  

**- Make a long listing to view the file’s permissions.**  
Screenshot heb ik niet meer, maar deze pagina heb ik gebruikt: https://phoenixnap.com/kb/linux-file-permissions  

**- Who is the file’s owner and group?**   
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/02.png?raw=true)  

**- What kind of permissions does the file have?**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/03.png?raw=true)

**- Make the file executable by adding the execute permission (x).**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/04.png?raw=true)

**- Remove the read and write permissions (rw) from the file for the group and everyone else, but not for the owner. Can you still read it?**  
We gebruiken de calculator normaals:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/05.png?raw=true)
En kijk aan, leesbaar:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/06%202.png?raw=true)

**- Change the owner of the file to a different user. If everything went well, you shouldn’t be able to read the file unless you assume root privileges with ‘sudo’.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/07.png?raw=true  )

**- Change the group ownership of the file to a different group.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-06/08.png?raw=true)  

## Key terms




## Bronnen
- *https://phoenixnap.com/kb/linux-file-permissions* 
- *https://chmod-calculator.com/*
- *https://youtu.be/XSQIy2lnz3w* 
- *https://linuxize.com/post/linux-chown-command/*
- *https://linuxize.com/post/chgrp-command-in-linux/* 