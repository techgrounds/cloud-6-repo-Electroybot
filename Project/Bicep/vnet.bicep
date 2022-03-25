@allowed([
  'prod'
  'dev'
  'qa'
])
param environment string

param location string = resourceGroup().location

var appName = 'app-${environment}-${location}'

resource myVnet1 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name: 'vnet-${appName}'
  location: location
  properties: {
    addressSpace:{
      addressPrefixes:[
        '10.30.0.0/16'
      ]
    }
  }
}
