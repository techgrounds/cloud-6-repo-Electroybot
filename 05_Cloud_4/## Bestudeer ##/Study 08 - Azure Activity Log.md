# Study 08 - Azure Activity Log

## Wat is Azure Activity Log
Het is een platformlog in Azure dat inzicht biedt in gebeurtenissen op subcription-level events.
Dit geldt ook voor gegevens zoals wanneer een resource wordt gewijzigd of wanneer een VMwordt gestart. U kunt het activiteitenlogboek weergeven in de Azure-portal, of items ophalen met PowerShell en CLI.  

Voor extra functionaliteit moet jeom de volgende redenen een diagnostische setting maken om het activiteitenlogboek naar een of meer van deze locaties te verzenden:  

- Logboeken Azure Monitor voor complexere query's en waarschuwingen, en langere retentie (maximaal 2 jaar).  
- Om Azure Event Hubs te kunnen doorsturen buiten Azure.  
- Om Azure Storage goedkopere archivering op de lange termijn mogelijk te maken.  

De logboekgebeurtenissen worden 90 dagen bewaard in Azure en vervolgens verwijderd.  

Je kunt de logs openen vanuit de meeste menu's, dit bepaalt ook het aanvankelijke filter. Voorbeeld: als je het opent vanuit het menu `Monitor`, is het enige filter ingesteld op je subscription zelf. Als je het opent vanuit een resource, dan is het filter ingesteld op die specifieke resource. Wijzigen is altijd mogelijk, klik hiervoor op `Filter toevoegen`.  

De logs kun je downloaden bij `Download as CSV` en de historie kun je bekijken via het tabblad `Change History (Preview)`.

## Bronnen
- *https://docs.microsoft.com/en-us/azure/azure-monitor/essentials/activity-log*  
- *https://docs.microsoft.com/en-us/azure/azure-monitor/essentials/diagnostic-settings?tabs=CMD*