# LNX-10 - Bash scripting

## Introduction
The default command line interface in Linux is called a Bash shell. You’ve already interacted with Linux using commands in this shell.
A Bash script is a series of commands written in a text file. You can execute multiple commands in a row by just executing the script.
Additional logic can be applied with the use of variables, conditions, and loops among others.  

In order to be able to execute the script, a user needs to have permissions to execute (x) the file.
Linux will only be able to find the script if you specify the path name, or if you add the path to the directory in which the script lives to the PATH variable.  

**Hint: although there are no file extensions in Linux, it’s easier for humans to understand if you end your script names with ‘.sh’.**  

## Requirements
Your VM.  

## Exercise 1

**- Create a directory called ‘scripts’. Place all the scripts you make in this directory.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/01.png?raw=true)  

**- Add the scripts directory to the PATH variable.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/02%2001.png?raw=true)  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/02%2002.png?raw=true)  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/02%2003.png?raw=true)  

**- Create a script that appends a line of text to a text file whenever it is executed.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/03%2001.png?raw=true)  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/03%2002.png?raw=true)  

**- Create a script that installs the httpd package, activates httpd, and enables httpd. Finally, your script should print the status of httpd in the terminal.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/04%2001.png?raw=true)  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/04%2002.png?raw=true)  

### Variables

You can assign a value to a string of characters so that the value can be read somewhere else in the script.
Assigning a variable is done using ‘=’.
Reading the value of a variable is done using ‘$<insert variable name here>’.  

## Exercise 2
Create a script that generates a random number between 1 and 10, stores it in a variable, and then appends the number to a text file.  

![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-10/Ex%2002.png?raw=true)    

## Key terms

### Bash script
Bash scripts gebruik je om te automatiseren.  

### PATH variable
Deze variabele geeft een set van mappen aan waar executable programma's staan waar je naar kunt zoeken met je opdrachtregel/terminal.  

## Bronnen

- *https://linuxhint.com/30_bash_script_examples/*
- *https://www.shells.com/l/en-US/tutorial/How-to-Fix-Shell-Script-Permission-Denied-Error-in-Linux*
- *https://www.howtogeek.com/299219/how-to-save-the-output-of-a-command-to-a-file-in-bash-aka-the-linux-and-macos-terminal/*
