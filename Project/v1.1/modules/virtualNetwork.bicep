// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('Virtual Network Name.')
param name string

@description('Virtual Network CIDR.')
param addressPrefixes array

@description('Virtual Network Subnets Array.')
param subnets array = []

@description('Network Security Group Name.')
param networkSecurityGroupName string

// Refer existing Network Security Group
resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2021-03-01' existing = {
  name: networkSecurityGroupName
  scope: resourceGroup()
}

// Deploy Virtual Network
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
    subnets: [for subnet in subnets: {
      name: subnet.name
      properties: {
        addressPrefix: subnet.addressPrefix
        networkSecurityGroup: {
          id: networkSecurityGroup.id
        }
      }
    }]
  }
}

// Define Outputs
output virtualNetworkName string = virtualNetwork.name
output virtualNetworkId string = virtualNetwork.id
output subnetResourceIds array = [for subnet in subnets: az.resourceId('Microsoft.Network/virtualNetworks/subnets', name, subnet.name)]
