# Azure DNS #

Allereerst plaats kort wat een DNS (**Domain Name Server**) is. 
Een DNS zorgt ervoor dat servers wereldwijd bereikbaar zijn met behulp van namen in plaats van een numeriek ip-adres. 
Deze worden niet vertaald, maar opgezocht middels het opzoeken van namen in tabellen waaraan nummers gekoppeld zijn. 
Een DNS is een client-serversysteem: een opvrager (client) gebruikt het DNS-protocol om aan een aanbieder (DNS-server) een naam of adres op te vragen, waarop de server een antwoord terugstuurt. Het opzoeken van een nummer bij een naam wordt *forward lookup* genoemd; het opzoeken van een naam bij een nummer *reverse lookup*.

In Azure DNS worden private IP-adressen gebruikt binnen VNet en er wordt gebruik gemaakt van *auto-registration*. 
In de praktijk wordt er op basis van de Azure resource naam een record aangemaakt in de Private DNS-zone.
Een VNet is één of meer CIDR's van IP-adressen en een CIDR (**Classless Inter-Domain routing**) is een methode voor het aanduiden van IP-adressen, waarbij het mogeljk is om tot op bit-niveau te bepalen wat het netwerkgedeelte is en wat het hostgedeelte van een 32-bit IPv4-adres is. 
De bit staat achter de slash en wordt uitgedrukt in een decimaal getal tussen 0 en 32 dat het aantal bits aanduidt.
Een VNet wordt onderverdeeld in meerdere subnets en binnenin deze subnets staan specifieke resources, hierin staan NICs (**Network Interface Cards, onderlinge verbinding tussen een VM en het onderliggende software netwerk**), welke gekoppeld worden aan een VM.
Het IP-adres 168.63.129.16 is in ieder VNet hetzelfde, de zogenaamde *default*, dus zo zal ik deze vanaf hier dan ook noemen.

Alles binnen het VNet kan praten met dit IP-adres voor de DNS en maakt dan gebruik van de Azure DNS service. Een Azure DNS personaliseert het IP-adres.
De genoemde *default* is te overschrijven via een DNS-config op NIC-level, bijvoorbeeld voor een specifieke VM.
Configueren is dus mogelijk in het virtuele netwerk en in een NIC zelf.
Deze kan een of meerdere statische of dynamische public én private IP-adressen toegewezen krijgen.

Als je de default gebruikt, dan heb je een speciale private zone. IDNS (**Internal DNS**). Dit is geautomatiseerd en gratis, deze wordt tegelijkertijd aangemaakt met een VNet zelf. 
Internal.cloudapp.net
Iedere VM die opgezet wordt in het Virtual Network wordt automatisch aan watdanook.internal.cloudapp.net gekoppeld en is adresseerbaar via de *default*.
Als je over verschillende Virtual Networks wenst te gaan, dan kun je dit aanpassen.

https://youtu.be/Hiohn35DIqA
https://nl.wikipedia.org/wiki/Domain_Name_System
https://docs.microsoft.com/en-us/azure/dns/dns-overview