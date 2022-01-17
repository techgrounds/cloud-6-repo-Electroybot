# AZ-01 - Azure Global Infrastructure

## Introductie
Alles in de cloud, van servers tot networking, is virtualized. Als klant van een cloud provider hoef je je geen zorgen te maken over de onderliggende fysieke infrastructuur. De fysieke locatie van je applicatie of data kan echter wel belangrijk zijn.  

De global infrastructure van Azure bestaat uit de volgende componenten:  
- Regions  
- Availability Zones  
- Region Pairs  

Je hebt zelf controle over welke regio je gebruikt, maar niet elke service is beschikbaar in elke regio. Sommige services zijn ook niet gebonden aan een specifieke regio. Denk hierbij bijvoorbeeld aan Azure Subscriptions.  

## Bestudeer:  

**- Wat is een Azure Region?**  
Een ‘region’ is simpelweg een geografisch gebied ergens op de planeet, een locatie voor je services. In zo’n gebied staat een of (meestal) meer datacenter(s) die verbonden zijn met een low-latency netwerk, dus met zo’n klein mogelijke vertraging. Alle regions en region pairs zijn gegroepeerd in geografieën.

**- Wat is een Azure Availability Zone?**  
Dit zijn fysiek gescheiden locaties binnen een Azure Region. Bestaan uit een of meer datacenters met hun eigen stroomvoorziening, koeling en netwerken en zijn tolerant voor lokale fouten: software- en hardwarefouten, maar ook aardbevingen, overstromingen, brand etcetera. Om de tolerantie te garanderen, zijn er minimaal drie unieke availability zones in alle regio’s die voorzien zijn van availability zones (beschikbaarheidszones), dus niet iedere regio is voorzien van availability zones.  

De zones zijn zo ontworpen dat ze flexibel en veerkrachtig kunnen worden ingezet en zijn op twee manieren te configureren: 
- zone redundant - automatische replicaties tussen zones  
- ‘zonal’: resource(s) gekoppeld aan een specifieke zone. Combineren is mogelijk!  

**- Wat is een Azure Region Pair?**  

Dat zijn 2 geografische regio’s die met elkaar gespiegeld zijn, op minimaal 300 mijl afstand. Deze manier en deze afstand zorgt voor een vermindering van (mogelijk) uitval door natuurrampen, oorlogen, stroomuitval of fysiek uitval.  
Voorbeeld: North-Europe (Ireland) en West-Europe (Netherlands).  
Alle regions en region pairs zijn gegroepeerd in geografieën.  

**- Waarom zou je een regio boven een andere verkiezen?**  
Omdat niet alle services in iedere region worden aangeboden. Dus dan kun je mogelijk beter de region kiezen die, ondanks een iets hogere latency dan de dichtstbijzijnde region, wél de gewenste service kan aanbieden.   

## Bronnen:

- https://www.youtube.com/watch?v=C-nNw1mGwzE
- https://docs.microsoft.com/en-us/azure/availability-zones/az-overview  