# Opdracht 6 - Azure Active Directory  

## Wat is Azure Active Directory (Azure AD)?

De Microsoft Azure Active Directory is eigenlijk een verlenging van je infrastructuur naar de cloud en werkt als een universeel identiteitsplatform om identiteiten te beheren en te beveiligen. Je behoudt bestaande on-premise investeringen en houdt voortaan controle vanuit de cloud. De Azure Active Directory maakt het bovendien makkelijk voor gebruikers, want met een Single Sign-On krijgen ze toegang tot alle geïntegreerde Software-as-a-Service (SaaS)-applicaties, zoals Microsoft Office en SalesForce. Omdat Microsoft Azure Active Directory een Cloud Identity Service is, komen bovendien steeds nieuwe functies beschikbaar.  

`Hieronder zie je weergegeven hoe applicaties interactie hebben met Azure AD`
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%205/Azure%20Active%20Directory/app-management-overview.png?raw=true)  

## Voor wie is het bedoeld?  

### Beheerders/Admins
IT-beheerder kunnen Azure AD gebruiken om de toegang tot apps en app-resources te beheren op basis van bedrijfsvereisten. Je kunt bijvoorbeeld Azure AD gebruiken als je meervoudige verificatie wilt gebruiken bij het openen van belangrijke resources in de organisatie. Ook kunt je Azure AD gebruiken voor het automatisch laten inrichten van gebruikers tussen je bestaande Windows Server AD en je cloud-apps, waaronder Microsoft 365. Ten slotte beschikt u met Azure AD over hulpprogramma's waarmee je automatisch gebruikersidentiteiten en -referenties kunt beveiligen en aan de vereisten voor toegangsbeheer te voldoen.  

### App developers
Developers kunnen Azure AD gebruiken als *standards-based approach* voor het toevoegen van single sign-on (SSO) aan hun app, zodat deze kan werken met de al bestaande credenties van de app-gebruikers. Azure AD voorziet van API's waarmee persoonlijke app-ervaringen ontwikkeld kunnen worden die gebruik kunnen maken van al in de organisatie aanwezige gegevens.   

### Abonnees van Microsoft 365, Office 365, Azure of Dynamics CRM Online 
Als subscriber gebruikt je automatisch Azure AD. Iedere subscribe ook betaalde mogelijkheden toevoegen door te upgraden naar de **Azure Active Directory Premium P1- of Premium P2-licenties**. De betaalde licenties van Azure AD zijn uitbreidingen van je bestaande gratis directory. Ze bieden selfservice, uitgebreide monitoring, beveiligingsrapportages en beveiligde toegang voor eventuele mobiele gebruikers.  

### Mogelijkheden
- **Azure Active Directory Free.** Biedt gebruikers- en groepsbeheer, on-premises adreslijstsynchronisatie, eenvoudige rapporten, selfservice voor wachtwoord wijzigen voor cloudgebruikers en eenmalige aanmelding voor Azure, Microsoft 365 en veel populaire SaaS-apps.  

- **Azure Active Directory Premium P1.** Naast de functies van de Free-licentie kunt je met P1 je hybride gebruikers toegang verlenen tot zowel on-premises als cloudresources. P1 biedt tevens ondersteuning voor geavanceerder beheer, zoals dynamic groups, selfservice group management, Microsoft Identity Manager (een on-premises pakket/suite voor identiteits- en toegangsbeheer) en cloud write-back mogelijkehden, die selfservice voor wachtwoordherstel voor on-premises gebruikers mogelijk maken.  

- **Azure Active Directory Premium P2.** Naast de functies van de licenties voor Free en P1 biedt P2 daarnaast Azure Active Directory Identity Protection voor op risico’s gebaseerde voorwaardelijke toegang tot je apps en kritieke bedrijfsgegevensm.
Ook beidt het Privileged Identity Management aan voor het detecteren, beperken en monitoren van beheerders en hun toegang tot resources, en om just-in-time-toegang te bieden wanneer het nodig is.  

- **Functielicenties met Betalen per gebruik.** Je kunt ook aanvullende feature licenties krijgen, zoals **Azure Active Directory Business-to-Customer** (B2C). Met B2C kunt u identiteits- en toegangsbeheeroplossingen bieden voor klantgerichte apps.  

## Wat zijn de belangrijkste functies van Azure AD?

### Applicatiebeheer  
Beheer zowel cloud- als on-premise apps, single sign-on, de MyApps-portal en alle SaaS-apps.  

### Authenticatie  
Of het nu gaat om een selfservice wachtwoordherstel, het kalibreren van de MFA-vereisten of het inschakelen van slimme lock-out, je kunt echt gedetailleerd werken met de authenticatie-instellingen (vooral bij gebruik in combinatie met conditional access) voor een betere beveiliging en controle.  

### Business-to-business (B2B)  
Beheer de gastgebruikers en -partners en geef ze de toegang die je bereid bent toe te staan.  

### Business-to-customer (B2C)  
Bied aangepaste login- en aanmeldingservaringen aan, zodat klanten hun profiel binnen je applicaties kunnen beheren.  

### Device management  
Controleer hoe je netwerk wordt benaderd door on-premise en externe apparaten, met behulp van Intune om gegevens te beveiligen.  

### Hybride identiteit  
De meeste organisaties zijn nog niet klaar om te gaan cloud-only, maar het gebruik van Azure AD Connect stelt je in staat om te profiteren van de functies van Azure AD – zelfs als je een aantal on-premise applicaties en een aantal cloud applicaties hebt draaien.  

### Identiteitsbeheer  
Om ervoor te zorgen dat je identiteits-ecosysteem gezond blijft, heeft Azure AD een aantal ingebouwde bestuursfuncties waarmee je je identiteit kunt beheren en toegang kunt krijgen tot levenscycli en geprivilegieerde toegangsvoorwaarden kunt instellen.
Deze controles zijn ontworpen om organisaties in staat te stellen ervoor te zorgen dat de juiste gebruikers de juiste toegangsniveaus hebben en te controleren wat ze ermee doen. Een van de belangrijkste voordelen van goed bestuur is de mogelijkheid om de effectiviteit van de toegepaste controles te controleren en te verifiëren.  

### Identiteitsbescherming  
Azure AD Identity Protection maakt gebruik van beveiligingsinformatie die afkomstig is uit het digitale imperium van Microsoft om risico’s op basis van identiteit op te sporen en te verhelpen, waardoor een groot deel van het proces van het identificeren en aanpakken van beveiligingsproblemen wordt geautomatiseerd.  
Deze risico’s kunnen dan verder onderzocht worden via het Azure AD portaal.  

### Rapporten en monitoring    
Azure AD beschikt ook over monitoring- en rapportagemogelijkheden om je te helpen inzicht te krijgen in je omgeving. Je kunt diagnostiek uitvoeren en logboeken bekijken die vervolgens ook kunnen worden toegepast op SIEM-tools van derden (of de eigen Azure Sentinel van Microsoft) om een diepere duik in jouw gegevens te nemen.  




## Key terms

### Cloud write-back
Hiermee kunnen wachtwoordwijzigingen in de cloud in realtime worden 'teruggeschreven' naar een on-premises active directory m.b.v. Azure AD Connect of Azure AD Connect cloud sync.





## Bronnen

- *https://qssolutions.nl/producten/azure-active-directory/*  
- *https://docs.microsoft.com/nl-nl/azure/active-directory/fundamentals/active-directory-whatis*  
- *https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/what-is-application-management*
- *https://myitcrew.nl/de-definitieve-gids-voor-azure-ad-alles-wat-je-moet-weten*
