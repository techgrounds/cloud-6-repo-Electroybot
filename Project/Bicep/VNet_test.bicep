/*

testing.bicep

az login
az account set --name Roy Wiggerman

az deployment group create `
--resource-group rg-bicepdemo `
--template-file VNet_test.bicep `
--parameters environment=dev location=westeurope2

*/

@allowed([
  'prod'
  'dev'
  'qa'
])
param environment string

param location string = resourceGroup().location

var appName = 'app-${environment}-${location}'

resource myVnet 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'vnet-app-prod-westeurope'
  location: 'westeurope2'
  properties: {
    addressSpace:{
      addressPrefixes:[
        '10.30.0.0/16'
      ]
    }
  }
}
