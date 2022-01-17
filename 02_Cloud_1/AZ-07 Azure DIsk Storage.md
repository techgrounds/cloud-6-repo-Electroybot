# AZ-07 - Azure Disk Storage

## Introductie  
Azure Disk Storage kan gezien worden als een virtual hard drive in de cloud. Een disk kan een OS disk (waar het OS op staat) of een Data Disk (te vergelijken met een externe harde schijf) zijn. Je hebt een keuze tussen Managed Disks en Unmanaged Disks. Unmanaged Disks zijn goedkoper, maar je hebt er wel een Storage Account nodig (en je moet de disk dus zelf managen). Managed Data Disks kunnen gedeeld worden tussen meerdere VMs, maar dat is een relatief nieuwe feature en er zitten wat haken en ogen aan.  

Backups van een Managed Disk kan je maken met Incremental Snapshots die alleen de aanpassingen sinds de laatste snapshot opslaan. Voor een Unmanaged Disk kan je alleen een ‘normale’ snapshot maken.  

Er zijn 4 typen managed disks. Over het algemeen kan je zeggen dat meer performance zorgt voor hogere kosten:  
bron: https://docs.microsoft.com/en-us/azure/virtual-machines/disks-types  

![Kijk](1)

Een disk kan ge-encrypt worden voor security. Disks kunnen groter worden, maar niet kleiner.  
Als je een external device (inclusief een Data Disk) wilt gebruiken op Linux, moet je hem eerst mounten.   

## Benodigdheden   
Je Azure Cloud omgeving.  

## Opdracht
**- Start 2 Linux VMs. Zorgt dat je voor beide toegang hebt via SSH.**  


**- Maak een Azure Managed Disk aan en koppel deze aan beide VMs tegelijk.**  

**- Creëer op je eerste machine een bestand en plaats deze op de Shared Disk.**  


## Key terms

## Bronnen
