# LNX-4 Working with text (CLI)

## Introduction
Every command in Linux has a standard input and output.
The standard input (stdin) is the keyboard. If I run ‘mkdir myfolder’, the mkdir command will know what folder to create, because I typed ‘myfolder’.
The standard output (stdout) is the terminal. The command ‘echo hello’ will write ‘hello’ in the terminal.

Both the input and output can be redirected to a file instead of the default. This is called input redirection and output redirection. 
A pipe can be used to have the output of one command be the input of another command.

## Requirements:
- Your VM
- A text file with 2 lines of text

## Exercise:

**- Use the echo command and output redirection to write a new sentence into your text file using the command line. The new sentence should contain the word ‘techgrounds’.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-04/01.png?raw=true)

**- Use a command to write the contents of your text file to the terminal. Make use of a command to filter the output so that only the sentence containing ‘techgrounds’ appears.**  
Uiteraard heb ik Google gebruikt om mijn opdrachten te kunnen maken. Tijdens mijn zoektocht stuitte ik op '*ack*'.
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-04/02.png?raw=true)

**- Read your text file with the command used in the second step, once again filtering for the word ‘techgrounds’. This time, redirect the output to a new file called ‘techgrounds.txt’.**  
Met '**ack**' liep ik helaas vast. Na trial and error:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-04/03.png?raw=true)  


## Key terms

### Echo  
Hiermee kun je een tekenreeks weergeven in de je terminal.  
De algemene syntax van het commando luidt:  

echo [OPTIES] STRING  

### Grep  
Hiermee doorzoek je de inhoud van tekstbestanden.  
Gebruik grep volgens deze syntax:  

grep [OPTIES] ZOEKPATROON [BESTAND(EN)]  

### Ack  
Lijkt op grep, moet eerst nog geinstalleerd worden. Ack is uitgebreider en gebruiksvriendelijker, mits je weet hoe je het moet gebruiken en dat was in mijn geval nog niet zo.  


## Bronnen  

- https://www.howtogeek.com/446071/how-to-use-the-echo-command-on-linux/  
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-ack-a-grep-replacement-for-developers-on-ubuntu-14-04  
- https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/  

