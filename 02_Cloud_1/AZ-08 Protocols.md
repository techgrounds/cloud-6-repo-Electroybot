# 08 - Protocols

## Introductie:
Een netwerk protocol is een afspraak die wij mensen gemaakt hebben over hoe computers met elkaar communiceren. Deze afspraken maken het mogelijk dat het Internet kan bestaan, zonder dat je voor iedere verbinding een andere standaard moet aanhouden.
Het OSI-model is een goed hulpmiddel om te beschrijven waar een protocol ‘leeft’ en wat het doel is van een protocol. Vaak genoeg ‘leeft’ een protocol in meerdere lagen van het OSI-model.  

Twee protocols die in laag 4 ‘leven’ is TCP en UDP. Deze protocols zijn verantwoordelijk voor het transport van internet pakketten. 
TCP, veel gebruikt op het web, heeft een aantal stappen waarin er zeker gesteld wordt dat de verbinding gemaakt kan worden en om zeker te zijn dat alle data is overgekomen. Dit is ook wel de ‘three-way handshake’ genoemd. Dit maakt TCP erg betrouwbaar.
UDP heeft een hele andere aanpak: ‘fire and forget’. UDP maakt geen zorgen over of een pakketje aankomt. Dit maakt dit protocol onbetrouwbaar, maar wel veel sneller. UDP wordt veel gebruikt in omstandigheden waar snelheid belangrijker is dan snelheid. Zoals de video data van een Zoom-call.  

Protocols die ‘leven’ in hogere lagen van het OSI-model hebben meestal specifieke toepassingen. HTTP(s) of SSH zijn enkele voorbeelden van hogere level protocols.  

Onderdeel van de afspraken die wij gemaakt hebben over protocols is dat deze meestal een ‘standaard poort’ hebben. Voor SSH is dit poort 22.
## Bestudeer  
- OSI model met protocols  
- Structuur van een HTTPS TCP/IP-pakket  

## Benodigdheden

### OSI     - All People Seem To Need Data Processing  
              Please Do Not Throw Special Pizza Away  
### TCP/IP  - Always Try It, Noob  
              Never Interrupt The Adventure  

## Opdracht  

**- Begrijp hoe een HTTPS TCP/IP-pakket opgebouwd is.**  
4 of 5 lagen, ligt eraan welke er wordt gebruikt, maar in de praktijk maakt dit niets uit.  

**- Begrijp wie bepaalt welke protocols wij gebruiken en wat je zelf moet doen om een nieuw protocol te introduceren.**  
IANA (The Internet Assigned Numbers Authority). Voor de overige kun je hier kijken:   
https://www.internetx.com/en/news-detailview/who-creates-the-standards-and-protocols-for-the-internet/  

**- Identificeer op zijn minst één protocol per OSI-laag.**  

![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%202/Week%202%20-%20AZ-01%20tm%20AZ-09/AZ-08/01.png?raw=true)  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%202/Week%202%20-%20AZ-01%20tm%20AZ-09/AZ-08/02.png?raw=true)  

**- Facebook was recent een lange tijd niet beschikbaar. Ontdek waarom. Tip: BGP.**   

Dit kwam door een wijziging bij de backbonerouters. De netwerken waren niet meer bereikbaar via de routingtables en de beheerders konden op afstand dus niets beheren en daarom moesten er fysiek wijzigingen worden doorgevoerd. De systeembeheerders beschikten hiervoor niet over de juiste kennis en het gebrek aan communicatie bemoeilijkte de kennisoverdracht. Tot slot konden de medewerkers de datacenters niet betreden omdat hun badges niet meer werkten.  

## Key terms
### BGP
Border Gateway Protocol. Heel verhaal, zie de link @Bronnen.  

## Bronnen
- https://www.internetx.com/en/news-detailview/who-creates-the-standards-and-protocols-for-the-internet/
- https://tweakers.net/nieuws/187706/facebook-downtime-kwam-door-configuratiefout-backbonerouters.html
- https://en.wikipedia.org/wiki/2021_Facebook_outage
- https://nl.wikipedia.org/wiki/Border_Gateway_Protocol
