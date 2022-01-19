# Linux 2 : Files and directories  

## Introduction  
Linux uses files and folders, like you’re used to with any OS you’ve used. Folders in Linux are called directories, so use that word when looking for commands or information.

Whenever you open a terminal, you’ll start working from your home directory. From there you can move to any directory in the entire system using just a couple of commands.

The Linux filesystem starts at the root directory, represented by a slash (/). All files and directories in Linux are represented by their path, starting from root.
The tilde (~) is used as an alias for your home directory.

## Exercise  
**- Find out your current working directory.**  
Hiervoor gebruik je **'pwd'**:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-02/01.png?raw=true)  

**- Make a listing of all files and directories in your home directory. You should see directories like ‘Desktop’, ‘Public’ and ‘Pictures’ among others.**  
Hiervoor gebruik je **'ls'**:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-02/02.png?raw=true)  

**- Within your home directory, create a new directory named ‘techgrounds’.**  
Om een nieuwe map te maken, gebruik je het commando **'mkdir'** en met **'ls'** heb ik dit vevolgens gecontroleerd:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-02/03.png?raw=true)  

**- Within the techgrounds directory, create a file containing some text.**  
Er zijn diverse teksteditors. Ik heb gespeeld met meerdere editors en vergat in eerste instantie een screenshot te nemen, maar dit alsnog gedaan:    
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-02/04.png?raw=true)  

## Key terms  

### pwd   
Het pwd commando (*print working directory*) geeft in een Unix-omgeving (een familie van besturingssystemen) de naam van de huidige werkdirectory weer.  

### ls  
Met dit commando geef de bestandslijst in een directory weer (*list*).  

### mkdir  
Met dit commando maak je een nieuwe directory aan.  

### Vi(M), Atom, Nano  
Teksteditors in Linux.  

### cat
Cat, de afkorting voor “concatenate”, oftewel samenvoegen, maakt het mogelijk om bestanden te maken, bekijken en samen te voegen vanaf de terminal. Het is vooral handig om een voorbeeld van een bestand te bekijken zonder een grafische tekstbewerker te hoeven openen

## Bronnen  

- *https://www.guru99.com/linux-commands-cheat-sheet.html#1*  
- *https://askubuntu.com/questions/846605/how-to-create-a-directory-within-your-home-directory-linux*  
- *https://www.javatpoint.com/linux-text-editors*  


