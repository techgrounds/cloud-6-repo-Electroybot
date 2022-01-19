# Study 04 - Azure Containers

## Introductie
Containers zijn gestandaardizeerde pakketjes voor software en *dependencies*. Er komt veel bij kijken en ik ga dan ook behoorlijk uitwijden voor deze bestudeeropdracht.
Je kunt hiermee apps van elkaar isoleren, dit wil zeggen dat de gebruikte directories van apps los van elkaar werken en hierdoor kunnen gegevens niet door elkaar worden gehaald en hierom is het dan ook veiliger, sneller op te starten en VM instellingen zijn overbodig,
Gescheiden apps kunnen daarentegen gewoon gebruik maken van dezelfde OS kernel en het werkt met zowel Linux als Windows servers.

Het kan (dus hoeft niet) een *monolithic architecture* vervangen, waarbij gegevens door elkaar gehaald kunnen worden, in deze context ook wel *microservices architecture* genoemd.
Als bijvb. dependencies (external standalone libraries) worden samengevoegd in de opslaglaag, dan kunnen de samengevoegde individuele gegevens niet meer geschaald worden, want ze zijn als het ware vervuild.
Als je in dit geval kiest voor de microservice-werkwijze, dan slaat iedere gebruikte service een **eigen** status op. Elke service is verantwoordelijk voor de code én staat. Het is mogelijk om diverse versies naast elkaar te draaien en zo kun je altijd gemakkelijk nieuwe versies testen: mocht de nieuwe niet of slecht werken, dan kun je altijd nog vertrouwen op een oudere versie en je kunt gebruikers tegelijkertijd verschillende versies laten testen, voordat je de definitieve versie gaat uitrollen.




`De verschillen tussen een *monolithic architecture* en een microservices architecture qua opbouw:`

![Kijk](https://www.silversands.co.uk/wp-content/uploads/containers-1.png)  

Zoals je kunt zien is de opbouw anders, containers draaien niet op een hypervisor (ook wel VM monitor is een opstelling die 1 OS of meerdere tegelijkertijd op een hostcomputer draait), maar direct in/op een container engine, welke op een enkele kernel draait. Een container engine is software die in staat is op containers uit te voeren. Een voorbeeld hiervan is Docker.  



### Vragen voor theoretisch onderzoek:
 
- Hoe kan ik X combineren met andere diensten?  
- Wat is het verschil tussen X en andere gelijksoortige diensten?  

### Vragen voor praktisch onderzoek  
- Waar kan ik deze dienst vinden in de console?  
- Hoe zet ik deze dienst aan?  
- Hoe kan ik deze dienst koppelen aan andere resources?  


## Key terms

### Dependencies
Software dependencies zijn external standalone libraries en kent alle mogelijke groottevariaties, van één file tot meerdere files en folders georganiseerd in pakketjes om 1 specifieke taak uit te voeren.

Er zijn twee verschillende soorten dependencies:  
**- Direct dependencies:**  
Dit zijn de bibliotheken waarnaar rechtstreeks door je applicatie wordt verwezen.  

**- Transitive dependencies:**  
Dit zijn de bibliotheken die worden aangeroepen door je dependencies en zijn daarom 'dependant' van een dependency.
In-deception?  

### Dependency management  
Dit is een techniek voor het identificeren, oplossen en pachten van dependencies in codebase van je applicatie.  

### Dependency Manager  
Dit is softwaremodule die je helpt bij het integreren van external libraries of pakketjes in je grotere applicatie stack.  

### Monolithic architecture
In deze situatie wordt er voor een toepassing doorgaans één database gebruikt. 
Het voordeel hiervan is dat deze zich op één locatie bevindt, waardoor je deze makkelijk kunt implementeren. Elk onderdeel kan slechts één tabel hebben om de status, werk en/of de voortgang op te slaan.  

**Voordelen**  
+ Ze zijn simpel ontwikkel- en testbaar, omdat ze niet erg complex zijn. 
+ Scaling gaat gemakkelijk, want je kunt de applicatie gewoon meerdere malen draaien achter een load balancer. 
+ Deployment is simpel: je hoeft enkel het pakketje met de applicatie naar de server te kopiëren.

**Nadelen**
- Groottelimitatie.  
- Ondanks de groottelimitatie, is de applicatie te groot en complex om volledig te begrijpen, waardoor je niet snel en gemakkelijk wijzigingen kunt aanbrengen.  
- Niet complex, dus beperkt qua mogelijkheden en daarom niet altijd even geschikt voor de toekomst (veranderingen zijn tijdrovend en kostbaar).  
- Bij iedere update moet je redeployen.  
- Als één module een bug bevat, dan kan het hele proces van de applicatie worden onder- of afgebroken worden.  





## Bronnen
- *https://docs.microsoft.com/en-us/azure/containers/*  
- *https://docs.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-overview*
- *https://youtu.be/c4MgYhyAzjA*  
- *https://www.whitesourcesoftware.com/free-developer-tools/blog/dependency-management/*
- *https://docs.microsoft.com/nl-nl/azure/service-fabric/service-fabric-overview-microservices#:~:text=In%20een%20monolitische%20benadering%20wordt,de%20status%20op%20te%20slaan*
- *https://articles.microservices.com/monolithic-vs-microservices-architecture-5c4848858f59*
- *https://www.whitesourcesoftware.com/free-developer-tools/blog/dependency-management/*
- *https://www.silversands.co.uk/blog/understanding-containers-azure/*
- *https://www.geeksforgeeks.org/difference-between-virtual-machines-and-containers/*  

