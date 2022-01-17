# LNX-7 - Processes

## Introduction
Processes in Linux can be divided into three categories: Daemons, Services, and Programs.
A daemon runs in the background and is non-interactive. A Service responds to requests from programs. A service may be interactive. A program is run and used by users (e.g. Vim).

In order to connect to remote Linux machines (virtual or not), you can use ssh (secure shell). To make this connection to your machine possible, you’ll have to start the ssh service by starting the ssh daemon.

A process is an instance of running code. All code is stored in files somewhere on the system. In order to find these files, Linux will look in the $PATH variable (more about that in a later exercise). Every process has its own PID (Process ID) number.

## Requirements
Your VM.

## Exercise

**- Start the ssh daemon.**  
Deze heb ik eerst geinstalleerd:   
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/01.png?raw=true)

Et voilà:  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/01%202.png?raw=true)

**- Find out the PID of the ssh daemon.**  
Hiervoor gebruiken we het commando **pgrep**.  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/02.png?raw=true)  

**- Find out how much memory the sshd is using.**  
Hiervoor gebruiken we het commando **top**.  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/03.png?raw=true)

**- Stop or kill the sshd process.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%201/LNX-07/unnamed.png?raw=true)  

## Key terms

### pgrep

Het opdrachtregelprogramma pgrep vergelijkt het overzicht van lopende processen met een zoekterm en geeft bij overeenstemming de bijbehorende PIDs weer.
De algemene syntax van het commando luidt:

pgrep [OPTIES] zoekterm

pgrep geeft standaard de PIDs weer van alle processen die de zoekterm bevatten.

### top

Met het commando top vraag je een dynamisch overzicht van alle lopende processen op.  
Dit doe je volgens het volgende schema:  

top [OPTIES]  

De uitvoer van procesgegevens kan met behulp van diverse opties worden gewijzigd. Bovendien ondersteunt het top-procesoverzicht (onder meer) de volgende hotkeys om de uitvoer te sorteren:  

[P] = Sorteert de uitvoer op CPU-belasting  
[M] = Sorteert de uitvoer op geheugenverbruik  
[N] = Sorteert de uitvoer numeriek op PID  
[A] = Sorteert de uitvoer op leeftijd  
[T] = Sorteert de uitvoer op tijd  
[U GEBRUIKERSNAAM of UID] = filtert de uitvoer op de betreffende gebruiker  

Gebruik de hotkey [H] om een helppagina weer te geven en [Q] om het procesoverzicht te verlaten.  

## Bronnen  

- https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-20-04/  
- https://www.strato.nl/server/linux-commando-in-de-terminal-een-overzicht/  
- https://www.cyberciti.biz/faq/howto-start-stop-ssh-server/  



