# main.bicep (Bicep Module - main.bicep, Parameter file - parameters.json)

This bicep file creates resources.The deployment includes the following main Azure resources:

v1.0

- Key Vault
- Recovery Services Vault
- Storage Account
- App Virtual Network and Subnet
- App NSG
- Management Virtual Network and Subnet
- Management NSG
- Management VM and Disk
- Management VM Backup

v1.1

- Removed AppVM
- Added VMScaleset and configurations
- Added VMScaleset Autoscaling
- Added Public IP for Load Balancer
- Added Loadbalancer and configurations
- Updated README
- Updated Management Public IP SKU to Standard/Static to support Availability Zone

## Prerequisites

- Azure Subscription
- AZ CLI installed

## Deployment Steps

- Login to Azure subscription

    az login

- Set Azure Subscription

    az account set --subscription *SubscriptionId*

- Create Resource Group

    az group create --name rg-training01 --location "westeurope"

- Update parameters.json if required. Also, set deployVM boolean parameter to *false* to deploy infra first.
- Update main.bicep if required
- Run below command to deploy the infra

    az deployment group create --resource-group rg-training01 --template-file main.bicep --parameters '@parameters.json'

- Add secrets (adminUsername, adminPassword) in the key vault for VM deployment
- Update parameters.json. Set deployVM boolean parameter to *true* to deploy the VMs and VMSS.
- Run below command to deploy the infra

    az deployment group create --resource-group rg-training01 --template-file main.bicep --parameters '@parameters.json'


- When the Azure resources are no longer needed, use the Azure CLI or Azure PowerShell module to delete the quickstart resource group.

### az group delete --name exampleRG
