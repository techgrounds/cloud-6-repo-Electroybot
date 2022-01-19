# Study 07 - Azure App Configuration

## Wat is Azure App Configuration?  
Azure App Configuration biedt een service voor het centraal beheren van applicatieinstellingen en feature flafs/functiemarkeringen. 
Moderne programma's, met name programma’s die in een cloud worden uitgevoerd, hebben doorgaans veel onderdelen die zijn gedistribueerd, dus op veel plaatsen beschikbaar. Het verspreiden van configuratie-instellingen over deze onderdelen kan leiden tot moeilijk oplosbare fouten tijdens de implementatie van een toepassing (application deployment). Gebruik App Configuration om alle instellingen voor uw toepassing op te slaan en om de toegang ertoe te beveiligen op één plek.  

## Waarom App Configuration gebruiken?  
Cloudgebaseerde toepassingen worden vaak uitgevoerd op meerdere virtuele machines of containers in meerdere regio's en gebruiken meerdere externe services. Het is een flinke uitdaging om een robuuste en schaalbare applicatie te maken in een gedistribueerde omgeving.  

Er zijn verschillende programmeermethoden om ontwikkelaars te helpen omgaan met de toenemende complexiteit van het bouwen van toepassingen. 
De Twelve-Factor-app beschrijft bijvoorbeeld veel goed geteste architectonische patronen en best practices voor cloudtoepassingen. 
Een belangrijke aanbeveling in deze handleiding is om de configuratie van de code te scheiden. De configuratie-instellingen van een toepassing moeten extern van het bijbehorende uitvoerbare bestand worden gehouden en worden opgehaald uit de bijbehorende runtime-omgeving of een externe bron.  

**Hoewel elke toepassing gebruik kan maken van App Configuration, profiteren vooral de volgende soorten toepassingen ervan:**  

- Microservices op basis van Azure Kubernetes Service, Service Fabric of andere apps in containers die worden geïmplementeerd in één of meer regio's.    
- Serverless apps, met inbegrip van Azure Functions of andere event-driven, stateless compute-apps.    
- Continuous deployment pipeline.  

**App Configuration biedt de volgende voordelen:**  

- Een volledig beheerde service die in enkele minuten kan worden ingesteld.  
- Flexibele, belangrijke weergaven en toewijzingen.  
- Taggen met labels.  
- Point-in-time-herhaling van instellingen.  
- Dedicated UI voor het flag management.
- Vergelijking van twee sets configuraties voor custom-defined dimensions (collecties van gerelateerde objecten, genaamd attributen).
- Verbeterde beveiliging met door Azure beheerde identiteiten.  
- Versleuteling van gevoelige informatie in rust en tijdens overdrachten.  
- Nativeintegratie met populaire frameworks.  

**App Configuration vormt een aanvulling op Azure Key Vault, dat wordt gebruikt om toepassingsgeheimen op te slaan. Met App Configuration kunt u de volgende scenario's eenvoudiger implementeren:**  

- Centralisatie van het beheer en de distributie van hiërarchische configuratiegegevens voor verschillende omgevingen en regio’s.  
- Dynamische wijziging van tapplicatieinstellingen zonder dat een toepassing opnieuw hoeft te worden geïmplementeerd of gestart.  
- Beschikbaarheid van besturingsfuncties in real-time.  

## App Configuration gebruiken  
De eenvoudigste manier om een App Configuration-archief aan uw toepassing toe te voegen, is via een door Microsoft aangeboden client library. 
De volgende methoden zijn beschikbaar om verbinding te maken met uw toepassing, afhankelijk van uw gekozen taal en framework:

**Computertaal en framework**           **Verbinding maken**
_____________________________________________________________
.NET Core en ASP.NET Core	        App Configuration-provider voor .NET Core  
.NET Framework en ASP.NET	        App Configuration-ontwikkelaar voor .NET  
Java Spring                         App Configuration-client voor Spring Cloud  
Andere	                            App Configuration-REST API  


## Bronnen
- *https://youtu.be/t6m13DxUJMc*
- *https://docs.microsoft.com/en-us/azure/azure-app-configuration/overview*
- *https://docs.microsoft.com/en-us/azure/azure-app-configuration/faq*