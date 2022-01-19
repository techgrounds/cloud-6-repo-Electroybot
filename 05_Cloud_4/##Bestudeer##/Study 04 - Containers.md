# Study 04 - Azure Containers

## Introductie
Containers zijn gestandaardizeerde pakketjes voor software en *dependencies*.
Je kunt hiermee apps van elkaar isoleren, dit wil zeggen dat de gebruikte directories van apps los van elkaar werken en hierdoor kunnen gegevens niet door elkaar worden gehaald en hierom is het dan ook veiliger, sneller op te starten en VM instellingen zijn overbodig,
Gescheiden apps kunnen daarentegen gewoon gebruik maken van dezelfde OS kernel en het werkt met zowel Linux als Windows servers.

Het kan (dus hoeft niet) een *monolithic architecture* vervangen, waarbij gegevens door elkaar gehaald kunnen worden, in deze context ook wel *microservices architecture* genoemd.
Als bijvb. dependencies (external standalone libraries) worden samengevoegd in de opslaglaag, dan kunnen de samengevoegde individuele gegevens niet meer geschaald worden, want ze zijn als het ware vervuild.


`De verschillen tussen een *monolithic architecture* en een microservices architecture`

![Kijk](https://www.silversands.co.uk/wp-content/uploads/containers-1.png)  



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
Het voordeel hiervan is dat deze zich op één locatie bevindt, waardoor je deze makkelijk kunt implementeren. Elk onderdeel kan één tabel hebben om de status, werk en/of de voortgang op te slaan. Dit is dus


## Bronnen
- https://docs.microsoft.com/en-us/azure/containers/  
- https://youtu.be/c4MgYhyAzjA  
- https://www.whitesourcesoftware.com/free-developer-tools/blog/dependency-management/
- https://docs.microsoft.com/nl-nl/azure/service-fabric/service-fabric-overview-microservices#:~:text=In%20een%20monolitische%20benadering%20wordt,de%20status%20op%20te%20slaan.
- https://articles.microservices.com/monolithic-vs-microservices-architecture-5c4848858f59
- https://www.whitesourcesoftware.com/free-developer-tools/blog/dependency-management/
- https://www.silversands.co.uk/blog/understanding-containers-azure/  
- https://www.geeksforgeeks.org/difference-between-virtual-machines-and-containers/  

