# main.bicep (Bicep Module - main.bicep, Parameter file - parameters.json)

This bicep file creates Training resources.The deployment includes the following main Azure resources.

- v1.0
  - Key Vault
  - Recovery Services Vault
  - Storage Account
  - App Virtual Network and Subnet
  - App NSG
  - Management Virtual Network and Subnet
  - Management NSG
  - Management VM and Disk
  - Management VM Backup

- v1.1 - Skeleton
  - Removed AppVM
  - Added VMScaleset and configurations
  - Added VMScaleset Autoscaling
  - Added Public IP for Load Balancer
  - Added Loadbalancer and configurations
  - Updated README
  - Updated Management Public IP SKU to Standard/Static to support Availability Zone

- v1.1
  - Update Key Vault module to create secrets
  - Add parameter keyVaultSecrets to define secret name and values

## Prerequisites

- Azure Subscription
- AZ CLI installed

## Deployment Steps

- Login to Azure subscription
  - az login

- Set Azure Subscription
  - az account set --subscription *SubscriptionId*

- Create Resource Group
  - az group create --name rg-testinggg --location "westeurope"

- Update Parameters values
  - Update parameters.json as required
  - Update main.bicep if required
  - Run below command to deploy the infra
    - az deployment group create --resource-group rg-testinggg --template-file main.bicep --parameters '@parameters.json'

    ### az group delete --name exampleRG


          "keyVaultName": {
            "value": "kv-prd-v1.1-rw"
