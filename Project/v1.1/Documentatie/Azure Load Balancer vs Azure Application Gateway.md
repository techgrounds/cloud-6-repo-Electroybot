# Azure Load Balancer vs Azure Application Gateway

## Load Balancer
- Azure Load Balancer werkt op laag 4 van het (OSI)-model - **Transport layer**
- Het is het enige aanspreekpunt voor klanten. Load balancer distribueert inkomende stromen die aankomen bij de front-end van de load balancer naar back-end pool-instanties.
- De back-end-poolinstanties kunnen Azure Virtual Machines zijn of instanties in een virtuele-machineschaalset.
- Een openbare load balancer kan uitgaande verbindingen bieden voor virtuele machines (VM's) binnen je virtuele netwerk.
- Openbare Load Balancers worden gebruikt om het internetverkeer naar je VM's te verdelen.
- Een interne (of private) load balancer wordt gebruikt waar privé-IP's alleen aan de frontend nodig zijn.
- Interne load balancers worden gebruikt om het verkeer binnen een virtueel netwerk te verdelen.

## Application Gateway

- Werkt op laag 7 van het OSI-model - **Application layer**.
- Azure Application Gateway is een load balancer voor webverkeer waarmee je het verkeer naar je webtoepassingen kunt beheren.
- Kan routeringsbeslissingen nemen op basis van aanvullende kenmerken van een HTTP-verzoek, bijvoorbeeld URI-pad of hostheaders.
- Je kunt Application Gateway gebruiken met Web Application Firewall (WAF) voor een schaalbare en veilige manier om het verkeer naar je webapplicaties te beheren.

## Layer 4 vs. Layer 7 Load Balancing
Het is een logisch apparaat dat is ontworpen om als verkeersleider te fungeren en netwerk- of applicatieverkeer over een aantal servers te verdelen. Load balancers worden gebruikt om de capaciteit en betrouwbaarheid van applicaties te vergroten. 

Load balancers verbeteren de algehele prestaties van applicaties door de belasting te verminderen voor servers die verantwoordelijk zijn voor het beheren en onderhouden van applicatie- en netwerksessies, en voor degenen die applicatiespecifieke taken uitvoeren.

## Layer 4 Load Balancer
Layer 4 load balancing werkt op de tussenliggende transportlaag, die verantwoordelijk is voor het afleveren van berichten, ongeacht de inhoud. Layer 4-load balancers sturen netwerkpakketten eenvoudig door en naar de upstream-server zonder de moeite te nemen om te inspecteren wat erin zit. Ze kunnen alleen beperkte routeringsbeslissingen nemen door de eerste paar pakketten in de transmissiebesturingsprotocol (TCP) -stroom te onderzoeken.

### Pros of Layer 4 Load Balancing
- Ideaal voor eenvoudige taakverdeling op pakketniveau.
- Omdat het geen rekening houdt met de gegevens, is het snel en efficiënt.
- Veiliger omdat er niet naar pakketjes wordt gekeken. In het geval dat het wordt gecompromitteerd, kan niemand de gegevens zien.
- De inhoud hoeft niet te worden ontsleuteld, hij stuurt ze alleen door.
- Maakt gebruik van NAT (network adress translation).
- Onderhoudt slechts één verbinding tussen client en server NAT, zodat je load balancer een maximum aantal TCP-verbindingen = to (aantal servers * max. verbindingen per server) kan bedienen.
- Sneller te bouwen voor mij.

### Nadelen van Layer 4 Load Balancing
- Niet in staat tot slimme taakverdeling op basis van de inhoud.
- Geen caching, leest de pakketjes immers niet.
- Géén echte microservices.
- Moet 'sticky' zijn omdat het een stateful protocol is. Zodra een verbinding tot stand is gebracht, gaat deze naar één server aan de achterkant. Alle pakketjes die naar deze verbinding stromen, gaan naar één server. De volgende verbinding kiest dan een andere server op basis van het algoritme.

## Layer 7 Load Balancer - Application Gateway
Layer 7 load balancing werkt op de applicatielaag, die verantwoordelijk is voor de daadwerkelijke inhoud van het bericht. Layer 7 load balancers routeren netwerkverkeer op een complexere manier, meestal van toepassing op TCP-gebaseerd verkeer zoals HTTP. In tegenstelling tot Layer 4, beëindigt een Layer 7 load balancer het netwerkverkeer en leest het bericht erin. Het neemt een beslissing op basis van de inhoud van het bericht. Daarna maakt het een nieuwe TCP-verbinding met de geselecteerde upstream-server en schrijft het verzoek naar de server. 

### Pros of Layer 7 Load Balancing
- Biedt slimme routering op basis van de URL.
- Caching - **Cache** is een opslagplaats waarin gegevens tijdelijk worden opgeslagen om sneller toegang tot deze data mogelijk te maken. Het opslaan van gegevens op een sneller medium om sneller toegang tot deze data te hebben wordt caching genoemd.

### Nadelen van Layer 7 Load Balancing
- Duurder.
- Vereist decrypting (ontsleuteling).
- Qua beveiliging moet je je certificaat delen met de load balancers. Als een aanvaller toegang krijgt tot de load balancer, heeft hij automatisch toegang tot al je gegevens.
- De proxy maakt meerdere verbindingen - client naar proxy/proxy naar server - zodat je wordt beperkt door de maximale TCP-verbinding op je load balancer.
- Zou veel langer duren om te bouwen.

## Conclusie
Als het er allemaal op aan komt, komt de keuze voor Layer 4 of Layer 7 load balancing neer op je persoonlijkje behoeften. 