resource storage 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'storageproject1'
  sku: {
    name: 'Standard_LRS'
  }
  kind:'StorageV2'
  location: 'WestEurope'
}
