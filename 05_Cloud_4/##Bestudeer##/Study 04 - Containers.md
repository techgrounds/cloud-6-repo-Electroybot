# Study 04 - Azure Containers

## Introductie
Containers zijn gestandaardizeerde pakketjes voor software en *dependencies*. Er komt veel bij kijken en ik ga dan ook behoorlijk uitwijden voor deze bestudeeropdracht. Een app op je telefoon is bijvoorbeeld ook als een container verpakt.
Je kunt hiermee apps van elkaar isoleren, dit wil zeggen dat de gebruikte directories van apps los van elkaar werken en hierdoor kunnen gegevens niet door elkaar worden gehaald en hierom is het dan ook veiliger, sneller op te starten en VM instellingen zijn overbodig.
Gescheiden apps kunnen daarentegen gewoon gebruik maken van dezelfde OS kernel en het werkt met zowel Linux als Windows servers.

Het kan (dus hoeft niet) een *monolithic architecture* vervangen, waarbij gegevens door elkaar gehaald kunnen worden, in deze context ook wel *microservices architecture* genoemd.
Als bijvb. dependencies (external standalone libraries) worden samengevoegd in de opslaglaag, dan kunnen de samengevoegde individuele gegevens niet meer geschaald worden, want ze zijn als het ware vervuild.
Als je in dit geval kiest voor de microservice-werkwijze, dan slaat iedere gebruikte service een **eigen** status op. Elke service is verantwoordelijk voor de code én staat. Het is mogelijk om diverse versies naast elkaar te draaien en zo kun je altijd gemakkelijk nieuwe versies testen: mocht de nieuwe niet of slecht werken, dan kun je altijd nog vertrouwen op een oudere versie en je kunt gebruikers tegelijkertijd verschillende versies laten testen, voordat je de definitieve versie gaat uitrollen.




`De verschillen tussen een *monolithic architecture* en een microservices architecture qua opbouw:`

![Kijk](https://www.silversands.co.uk/wp-content/uploads/containers-1.png)  

Zichtbaar is de opbouw anders, containers draaien niet op een hypervisor (ook wel VM monitor/host VM en dat is een opstelling die 1 OS of meerdere tegelijkertijd op een hostcomputer draait), maar direct in/op een container engine, welke op een enkele kernel draait.  
Een container engine is software die in staat is op containers uit te voeren, Dockers is hiervan een voorbeeld. 
Containers zijn efficiënter, omdat zij besturingssysteem en resources delen. Bij VM's bevat iedere VM een eigen besturingssysteem en zijn daarom niet bepaald compact te noemen, dus het opstarten duurt ook relatief lang, terwijl je een container doorgaans in luttele seconden op kunt starten.
Een bijkomend voordeel is dat dit scheelt in de kosten: meerdere containers maken immers gebruik van dezelfde resources.  

## Kubernetes

Kubernetes is open-source software waar je toepassingen in containers op schaal kunt implementeren en beheren.
VM's of servers (nodes) worden samengevoegd tot een cluster en deze kan beheerd worden door bijvb. een systeembeheerder, maar ook door developersteam. Het opzetten van dergelijke clusters is een moeilijke '**clus**', ter illustratie: je dient veel ervaring te hebben met Linux, Docker én Kubernetes. Clusters moeten worden onderhouden, updates moeten gepland worden en hoe ga je om met storingen? Dit kost tijd en is bovenal erg kostbaar. Die mogelijkheden zitten verwerkt in Azure Kubernetes Service, deze ga ik na het volgende benoemen.

De belangrijkste voordelen vam Kubernetes zijn:

- **Efficiëntie**  
Veel problemen van het beheer van containers worden opgelost doordat Kubernetes containers samenvoegt in ‘Pods’. Aan Pods kun je eigenschappen toekennen zoals storage, networking en scheduling. Kubernetes kijkt vervolgens naar het beschikbare geheugen en processorgebruik van elke node en kiest voor jou de beste verdeling. Hiermee worden de nodes van het Kubernetes cluster optimaal gebruikt wat resulteert in directe kostenbesparing.    
- **High-availability door het Desired State principe**  
Kubernetes volgt het Desired State principe. Je vertelt Kubernetes wat je wilt hebben, niet hoe Kubernetes dit moet doen. Kubernetes doet continue zijn uiterste best om aan jouw wensen te voldoen. Dus bij een update, onderhoud of een storing zal Kubernetes de pods opnieuw aanmaken of verdelen om aan je gestelde eisen te voldoen. Hiermee zorgt Kubernetes er automatisch voor dat de site of applicatie altijd beschikbaar is.  
- **Updaten zonder downtime**  
Met rolling updates kun je altijd updaten zonder downtime. Rolling updates is een techniek om pods een-op-een te vervangen door een nieuwere versie van Kubernetes. Hiermee is het in veel gevallen niet meer nodig om update ’s avonds of ’s nachts uit te voeren. Doordat het updaten van de applicaties in Kubernetes geautomatiseerd kan worden kan je ook vaker updaten. Bugs worden sneller opgelost en klanten hebben sneller de features waar ze om vragen.  
- **Centraal management**  
Kubernetes heeft zijn eigen opslag voor configuratie, wachtwoorden en certificaten. Er is geen lokale configuratie op VM’s of servers nodig. Dit maakt het beheer van een Kubernetes cluster efficiënt, makkelijk en overzichtelijk. Ook is er een enorm aantal tools en plugins beschikbaar voor het beheer van Kubernetes. Je bent niet verplicht om deze tools te gebruiken maar het is fijn om te weten dat Kubernetes eindeloos kan mee groeien met je organisatie.  

### Azure Kubernetes Service

Azure Kubernetes Service (**AKS**) is managed Kubernetes in Azure. Met AKS neemt Microsoft al het complexe beheer van het cluster van je over. Met een paar keer klikken of een paar regels code heb je al een AKS-cluster klaar voor productie gebruik.  

Microsoft is een van de grootste organisaties die actief mee ontwikkeld aan Kubernetes. Wat resulteert in een perfecte ondersteuning van Kubernetes in Azure. Binnen twee weken na het uitkomen van een nieuwe versie is de versie beschikbaar in Azure. Het updaten van een cluster, zoals genoemd en erg ingewikkelde klus, is met AKS teruggebracht tot een enkele klik.  

De voordelen van AKS:

- **Gratis!** AKS is gratis, je betaald alleen voor de resources (VM’s, opslag en netwerk) die het cluster verbruikt. Er worden geen kosten berekend voor de AKS PaaS dienst zelf. Het complex beheer van het cluster wordt dus helemaal kosteloos door Microsoft uitgevoerd.  
- Elk Kubernetes cluster heeft een of meerdere master nodes nodig, deze VMs bevatten de configuratie en zijn verantwoordelijk voor het beheer van het cluster. De master nodes zijn bij AKS voor rekening van Microsoft, je betaalt alleen voor de VM’s waar je AKS-cluster uit bestaat.  
- AKS biedt uitstekende integratie met Azure DevOps voor het opzetten van een CD/CI pipelines. Met rolling updates kan Kubernetes stuk voor stuk de containers updaten zonder downtime. Dit is essentieel voor CI/CD pipelines waarbij op elk moment van de dag updates worden doorgezet naar productiesystemen.  
- Een AKS cluster wordt in Azure uitgerold op een Availibility Set. Hiermee zijn de servers van het cluster verdeeld over meerdere fysiek gescheiden hardware racks. Dit geeft jou de garantie dat zelf bij een storing van de onderliggende hardware het cluster nog steeds online blijft. Een AKS cluster is hiermee altijd beschikbaar en daarmee ook jouw applicaties op het cluster.  
- Een AKS-cluster is vrijwel eindeloos horizontaal schaalbaar, het toevoegen of verwijderen van VMs kan zonder downtime of zelfs volledig automatisch. Heb je extra power nodig, met een paar keer klikken worden extra VMs aan het cluster toegevoegd.  
- Uitgebreide integratie met andere services binnen Azure. Bijvoorbeeld de storage, netwerken, monitoring en beveiliging van Azure zijn naadloos geïntegreerd binnen Kubernetes.  


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
- *https://intercept.cloud/nl/nieuws/de-evolutie-van-aks-van-containers-naar-kubernetes-naar-azure-kubernetes-services/*
- *https://www.whitesourcesoftware.com/free-developer-tools/blog/dependency-management/*
- *https://www.silversands.co.uk/blog/understanding-containers-azure/*
- *https://www.geeksforgeeks.org/difference-between-virtual-machines-and-containers/*  

