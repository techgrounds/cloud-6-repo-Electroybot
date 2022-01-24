# AZ-12 - IP adressen

## Introductie
Een IP adres is een logisch adres die aan een netwerkapparaat toegewezen kan worden. De netwerkapparaten kunnen dan vervolgens met dit IP adres elkaar vinden op het netwerk.  
Een IPv4 adres heeft 32 bits (8 bytes), en is meestal geschreven in decimalen (bijvoorbeeld: 132.88.142.5) waar iedere blok voor, na, en tussen de punten, 1 byte is. Dit betekent dat één blok tussen punten een maximale waarde kan hebben van 255.  

Het is wijd en zijd bekend in de ICT dat alle IPv4 adressen op zijn. De 8 bytes in een IPv4 adres maakt het mogelijk dat er 4,294,967,296 IPv4 adressen mogelijk zijn. En deze zijn allemaal al verkocht of gereserveerd. Mocht je interesse hebben wie jouw publieke IP adres mocht bezitten, dit is op te zoeken op met een whois-check.  

Het originele idee dat iedere computer op het internet met ieder een eigen publiek IP(v4) adres aanspreekbaar is, is al lang niet meer zo. Over de jaren heen zijn er een aantal maatregelen genomen om nog langer met IPv4 te kunnen werken. Zo heb je als gebruiker van het internet, achter je modem, maar één publiek IP adres dat je deelt met alle apparaten op het netwerk. Dit is mogelijk vanwege een NAT-tabel in je modem. Een NAT-tabel houd bij welke verbindingen de apparaten in je privé netwerk maken met het publieke internet en zorgt er dan voor dat data als antwoord naar de juiste computers gestuurd worden.  

Er zijn 3 IP adres bereiken gereserveerd voor privé netwerken. Iedereen gebruikt één van deze netwerken thuis of op werk. Deze zijn:  
- 192.168.0.0 - 192.168.255.255  
- 172.16.0.0  - 172.31.255.255  
- 10.0.0.0    - 10.255.255.255  

Een andere oplossing is IPv6. IPv6 adressen bevatten 128 bits, en is vaak geschreven in hexadecimalen. Het aantal adressen dat mogelijk is met IPv6 zo groot, dat je iedere korrel zand op alle stranden van onze aarde 3 IPv6 adressen kan geven voordat deze op is. Of dat is het verhaal wat vaak verteld wordt bij de voordelen van IPv6 over IPv4.  

Wij focussen ons op IPv4. Ondanks dat de transitie naar IPv6 noodzakelijk is, gebruikt AWS en Azure nog steeds voornamelijk IPv4 en is IPv6 een aparte optie die expliciet aangezet moet worden.  

## Bestudeer
- IP adressen
- IPv4 en IPv6
- Public en Private IPs
- NAT

## Benodigdheden
- Je laptop
- Je mobiel
- Je cloud omgeving

## Opdracht
- Ontdek wat je publieke IP adres is van je laptop en mobiel op wifi
What Is My Public IP Address - WhatIsMyIP.com®
Laptop:

Mobiel:




- Ontdek wat je publieke IP adres is op je mobiel via mobiel internet (als mogelijk).  


- Maak een VM in je cloud met een publiek IP. Maak verbinding met deze VM.  



- Verwijder het publieke IP adres van je VM. Begrijp wat er gebeurt met je verbinding.  
Het publieke IP is verwijderd en deze wordt direct weer beschikbaar gesteld voor gebruik door anderen. In Putty kon ik per direct niets meer uitvoeren en als je met hetzelfde IP-adres connect, dan krijg je een time out:



Vergeet niet de VMs te verwijderen en alle extra resources te verwijderen nadat je klaar bent.
