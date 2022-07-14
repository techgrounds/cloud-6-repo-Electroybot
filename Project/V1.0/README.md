# main.bicep (Bicep Module - main.bicep, Parameter file - parameters.json)

This bicep file creates Training resources.The deployment includes the following main Azure resources.

- Key Vault
- Recovery Services Vault
- Storage Account
- App Virtual Network and Subnet
- App NSG
- App VM and Disk
- App VM Backup
- Management Virtual Network and Subnet
- Management NSG
- Management VM and Disk
- Management VM Backup

## Prerequisites

- Azure Subscription
- AZ CLI installed

# get the current default subscription using show
az account show --output table

## Deployment Steps

- Create Resource Group

### az group create --name rg-project --location "westeurope"

- Update parameters.json if required. Also, set deployVM boolean parameter to *false* to deploy infra first.
- Update main.bicep if required

## Run below command to deploy the infra
                         |
                         |
### az deployment group create --resource-group rg-project --template-file main.bicep --parameters '@parameters.json'

- Add secrets (adminUsername, adminPassword) in the key vault for VM deployment
- Update parameters.json. Set deployVM boolean parameter to *true* to deploy the VMs.
- Run below command to deploy the infra
az deployment group create --resource-group rg-training --template-file main.bicep --parameters '@parameters.json'

az deployment group create --resource-group rg-test2103 --template-file main.bicep --parameters '@parameters.json'

resources="$(az resource list --resource-group "rg-training" | grep id | awk -F \" '{print $4}')"

for id in $resources; do
    az resource delete --resource-group "rg-training" --ids "$id" --verbose
done

- When the Azure resources are no longer needed, use the Azure CLI or Azure PowerShell module to delete the quickstart resource group.

### az group delete --name exampleRG

## KeyVault param 
// init-based params
param recVltName string = 'rv${toLower(uniqueString(utcNow()))}'
