// Set Parameters
@description('The Virtual Network Peering Name.')
param name string

@description('The Name of the Virtual Network to add the peering to.')
param localVnetName string

@description('The Resource ID of the VNet that is this Local VNet is being peered to. Should be in the format of a Resource ID')
param remoteVirtualNetworkId string

// Refer existing Virtual Network
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-03-01' existing = {
  name: localVnetName
}

resource virtualNetworkPeering 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-02-01' = {
  name: name
  parent: virtualNetwork
  properties: {
    allowForwardedTraffic: true
    allowGatewayTransit: true
    allowVirtualNetworkAccess: true
    doNotVerifyRemoteGateways: true
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: remoteVirtualNetworkId
    }
  }
}
