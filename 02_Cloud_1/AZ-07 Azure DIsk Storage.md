# AZ-07 - Azure Disk Storage

## Introductie  
Azure Disk Storage kan gezien worden als een virtual hard drive in de cloud. Een disk kan een OS disk (waar het OS op staat) of een Data Disk (te vergelijken met een externe harde schijf) zijn. Je hebt een keuze tussen Managed Disks en Unmanaged Disks. Unmanaged Disks zijn goedkoper, maar je hebt er wel een Storage Account nodig (en je moet de disk dus zelf managen). Managed Data Disks kunnen gedeeld worden tussen meerdere VMs, maar dat is een relatief nieuwe feature en er zitten wat haken en ogen aan.  

Backups van een Managed Disk kan je maken met Incremental Snapshots die alleen de aanpassingen sinds de laatste snapshot opslaan. Voor een Unmanaged Disk kan je alleen een ‘normale’ snapshot maken.  

Er zijn 4 typen managed disks. Over het algemeen kan je zeggen dat meer performance zorgt voor hogere kosten:  
bron: https://docs.microsoft.com/en-us/azure/virtual-machines/disks-types  

![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%202/Week%202%20-%20AZ-01%20tm%20AZ-09/AZ-07/01.png?raw=true)  

Een disk kan ge-encrypt worden voor security. Disks kunnen groter worden, maar niet kleiner.  
Als je een external device (inclusief een Data Disk) wilt gebruiken op Linux, moet je hem eerst mounten.   

## Benodigdheden   
Je Azure Cloud omgeving.  

## Opdracht  

**- Start 2 Linux VMs. Zorgt dat je voor beide toegang hebt via SSH.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%202/Week%202%20-%20AZ-01%20tm%20AZ-09/AZ-07/02.png?raw=true)  

**- Maak een Azure Managed Disk aan en koppel deze aan beide VMs tegelijk.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%202/Week%202%20-%20AZ-01%20tm%20AZ-09/AZ-07/03.png?raw=true)  

**- Creëer op je eerste machine een bestand en plaats deze op de Shared Disk.**  
![Kijk](https://github.com/Electroybot/cloud-6-repo-Electroybot/blob/main/00_includes/Week%202/Week%202%20-%20AZ-01%20tm%20AZ-09/AZ-07/04.png?raw=true)  

## Key terms  

### Azure Disk Storage/Azure managed disks  
Azure Managed Disks zijn opslagvolumes op blokniveau die worden beheerd door Azure en die worden gebruikt met Azure Virtual Machines. Beheerde schijven zijn net als een fysieke schijf op een on-premises server, maar gevirtualiseerd. Bij beheerde schijven hoeft u alleen de schijfgrootte en het schijftype op te geven en de schijf in terichten. Zodra u de schijf hebt ingericht, verwerkt Azure de rest.  

De beschikbare typen schijven zijn Ultra Disks, Premium SOLID-State Drives (SSD), Standard SSD's en Standard Hard Disk Drives (HDD). Zie Een schijftype selecteren voor IaaS-VM'svoor meer informatie over elk afzonderlijk schijftype.  

## Bronnen  

- https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ssh-from-windows  
- https://docs.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview  
