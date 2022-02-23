resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'cloudshell1233759012'
  location: 'westeurope'
  sku: {
    name: 'Standard_GRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
arm 
