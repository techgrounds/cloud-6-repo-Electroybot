# LNX-05 : Users and groups

## Introduction:
Linux has users, similar to accounts on Windows and MacOS. Every user has their own home directory. Users can also be part of groups.
There is a special user called ‘root’. Root is allowed to do anything.
To gain temporary root permissions, you can type ‘sudo’ in front of a command, but that only works if you’re allowed to do that.

Some actions require (root) permissions.

Users, passwords, and groups are all stored in  (different) files across the system.

## Requirements
Your CentOS VM

## Exercise
**- Create a new user in your VM.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-05/01.png?raw=true)  

**- The new user should be part of an admin group that also contains the user you created during installation.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-05/02.png?raw=true)  

**- The new user should have a password.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-05/03.png?raw=true)  

**- The new user should be able to use ‘sudo’.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-05/04.png?raw=true)  

**- Locate the files that store users, passwords, and groups. See if you can find your newly created user’s data in there.**   
![kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-05/05.png?raw=true)  

## Key terms

### sudo
Gebruik dit commando om een opdracht als superuser uit te voeren.

### usermod
Met het commando usermod kun je reeds aangemaakte gebruikersaccounts bewerken.

### tail
Net als het commando cat, zorgt tail ervoor dat de inhoud van een bestand getoond wordt, met één groot verschil: je krijgt alleen de laatste regels te zien. Standaard worden de laatste 10 regels getoond, maar dat kan je wijzigen met de -n flag.

Als je bijvoorbeeld de laatste regels van een groot bestand wil zien, gebruik je dit:
tail voorbeeld.txt

En om alleen de laatste vier regels te bekijken:
tail -n 4 voorbeeld.txt

## Bronnen

- https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
- https://linuxhint.com/where_and_how_are_passwords_stored_on_linux/
- https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu
- https://www.geeksforgeeks.org/tail-command-linux-examples/
