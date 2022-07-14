# [Cloud Week 4]

## Key terms  

### App Service*
Volledig beheerde hostingomgeving (server) met o.a. ingebouwd(e) infrastructuuronderhoud, beveilingspatches en scalingsmogelijkheden (scale up + scale out). Kent een *high availability* (SLA 99,95%).


00_includes\App services flowchart.png

https://azure.microsoft.com/en-us/services/app-service/#overview

https://youtu.be/4BwyqmRTrx8

00_includes\App services flowchart.png

### Content Delivery Network (CDN)*
Een CDN is een gedistributeerd netwerk dat fungeert als een cache van webpagina's op verschillende geografische locaties, dus de naam zegt het al: het is een (wereldwijd) netwerk van servers die content leveren. De inhoud van deze cache is *statisch*, en bevat bijvoorbeeld foto's, video's, JavaScript. De inhoud bijvoorbeeld van je winkelwagentje tijdens je bezoek aan een webshop is *dynamisch* en zal, net als alle andere dynamische content, opgeslagen worden bij de webhoster zelf.

Pros & cons

+ De eindgebruiker (bezoeker) ervaart een snellere website, vooral als er 
+ Beter opvangen van bezoekerspieken dankzij grote scalingsmogelijkheden
+ Beter bescherming tegen DDos-aanvallen - botverkeersaanvallen worden door
+ Verspreiding van *user requests*, dus minder dataverkeer naar de oorspronkelijke server

- Extra kosten naast de normale hosting.
- Het instellen vereist kennis, als je dit gaat uitbesteden heb je nog meer kosten.
- De cache moet soms geleegd worden als er wijzigingen zijn geweest aan de website om deze zichtbaar te maken

Het is niet nodig voor iedere website. Als je een website hebt die veel bezoekers heeft en/of internationale bezoekers kent, dan kan het interessant zijn.

https://youtu.be/Bsq5cKkS33I

https://webtalis.nl/woordenlijst/cdn/

https://docs.microsoft.com/en-us/azure/cdn/cdn-overview

### Azure DNS*

DNS (**Domain Name Server**). Een regulier DNS zorgt ervoor dat servers wereldwijd bereikbaar zijn met behulp van namen in plaats van een numeriek ip-adres. Deze worden niet vertaald, maar opgezocht middels het opzoeken van namen in tabellen waaraan nummers gekoppeld zijn. 
DNS is een client-serversysteem: een opvrager (client) gebruikt het DNS-protocol om aan een aanbieder (DNS-server) een naam of adres op te vragen, waarop de server een antwoord terugstuurt. Het opzoeken van een nummer bij een naam wordt *forward lookup* genoemd; het opzoeken van een naam bij een nummer *reverse lookup*.

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
Als je over verschillende Virtual Networks wenst te gaan

https://youtu.be/Hiohn35DIqA
https://nl.wikipedia.org/wiki/Domain_Name_System
https://docs.microsoft.com/en-us/azure/dns/dns-overview

### Azure Files**

Azure Files is een Azure File Storage service om files te dlen in de cloud en geeft je de mogelijkheid om remote of op locatie toegang te krijgen tot bestanden via een beveiligde software-interface (API). Het is gebaseerd op het zogenaamde *Server Message Block (SMB)* protocol.
Dit is een netwerkprotocol dat al jaren gebruikt wordt om in Windows bestandsuitwisseling tussen meerdere computers mogelijk te maken en kent nogal wat updates die ervoor gezorgd hebben dat Windows ook probleemloos bestanden uit kan wisselen met Linux en macOS. Dit gebeurd via software genaamd *Samba*.

Ook is het mogelijk om bijvoorbeeld printers te delen, zolang het SMB-protocol ondersteund wordt door beide machines.



https://cloud.netapp.com/blog/azure-anf-blg-azure-files-the-basics-and-a-quick-deployment-guide#H_H4

https://www.writeclick.co.il/nfs-vs-smb-a-crash-course-on-network-file-sharing/

### Cosmos DB**	
Cosmos DB is een databaseplatform (NoSQL = Not Only SQL. Meer dan één opslagmechanisme kan naar behoefte worden gebruikt) en onderdeel van Azure. Het wordt door bedrijven gebruikt voor de opslag van grote hoeveelheden data (zals Coca Cola, en Citrix) en is gechikt voor de ontwikkeling van apps. Het is snel (gegearandeerde responsetijden van) en erg goed schaalbaar, waardoor je het wereldwijd kunt inzetten.

Ze ondersteunen 4 soorten databases:

1) Key-value databases
2) Document databases
3) Wide Colomn databases
4) Graph databases

Deze databases zijn met verschillende API's aan te sturen.

https://www.tottadatalab.nl/2017/10/11/wat-betekent-nosql/
https://www.blazeclan.com/blog/dive-deep-types-nosql-databases/
https://docs.microsoft.com/en-us/azure/cosmos-db/introduction


### Azure Database ( + managed instance)**
Git commando om aanpassingen naar je (remote) repository te sturen, die staat op GitHub.

### Azure Functions**
Git commando om aanpassingen van je (remote) repository naar je lokale bestanden te sturen.

### Event Grid**
Git commando om aanpassingen van een branch samen te voegen met een andere branch. Bijvoorbeeld aanpassingen die getest en goedgekeurd zijn   in de “Develop” branch samenvoegen met de “Master” branch.

### Queue Storage**
Een repository kan je zien als de hoofdmap van je project. Hierin staan alle bestanden van je project en de historie van wijzigingen die je hebt gedaan.

### Service Bus**
Aparte plek binnen je repository, waar je bijvoorbeeld nieuwe code kan testen, zonder dat te hoeven doen op de “productversie”.

### 
Dit is de hoofdbranch, oftewel de “productversie” van je project. Nieuwe code die is getest en goedgekeurd, wordt samengevoegd met de Master branch.

### 
Een fork is een kopie van een repository. Hierdoor kan je werken aan een project van iemand anders, zonder het origineel aan te passen.

### 	
Git commando dat veranderingen toevoegt aan je lokale repository.

### 
Git commando om aanpassingen naar je (remote) repository te sturen, die staat op GitHub.

### 
Git commando om aanpassingen van je (remote) repository naar je lokale bestanden te sturen.

### 
Git commando om aanpassingen van een branch samen te voegen met een andere branch. Bijvoorbeeld aanpassingen die getest en goedgekeurd zijn   in de “Develop” branch samenvoegen met de “Master” branch.
*  : Bestuderen
** : Opdrachten
***: Tegengekomen tijdens opdracht

