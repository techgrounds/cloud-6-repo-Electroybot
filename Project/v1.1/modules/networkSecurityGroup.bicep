// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('NSG Name.')
param name string

@description('Array of NSG Rules.')
param networkSecurityGroupSecurityRules array = []


// Deploy Network Security Group and rules
resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2021-05-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    securityRules: [for nsgSecurityRule in networkSecurityGroupSecurityRules: {
      name: nsgSecurityRule.name
      properties: {
        description: contains(nsgSecurityRule.properties, 'description') ? nsgSecurityRule.properties.description : ''
        protocol: nsgSecurityRule.properties.protocol
        sourcePortRange: contains(nsgSecurityRule.properties, 'sourcePortRange') ? nsgSecurityRule.properties.sourcePortRange : ''
        destinationPortRange: contains(nsgSecurityRule.properties, 'destinationPortRange') ? nsgSecurityRule.properties.destinationPortRange : ''
        sourceAddressPrefix: contains(nsgSecurityRule.properties, 'sourceAddressPrefix') ? nsgSecurityRule.properties.sourceAddressPrefix : ''
        destinationAddressPrefix: contains(nsgSecurityRule.properties, 'destinationAddressPrefix') ? nsgSecurityRule.properties.destinationAddressPrefix : ''
        access: nsgSecurityRule.properties.access
        priority: int(nsgSecurityRule.properties.priority)
        direction: nsgSecurityRule.properties.direction
        sourcePortRanges: contains(nsgSecurityRule.properties, 'sourcePortRanges') ? nsgSecurityRule.properties.sourcePortRanges : null
        destinationPortRanges: contains(nsgSecurityRule.properties, 'destinationPortRanges') ? nsgSecurityRule.properties.destinationPortRanges : null
        sourceAddressPrefixes: contains(nsgSecurityRule.properties, 'sourceAddressPrefixes') ? nsgSecurityRule.properties.sourceAddressPrefixes : null
        destinationAddressPrefixes: contains(nsgSecurityRule.properties, 'destinationAddressPrefixes') ? nsgSecurityRule.properties.destinationAddressPrefixes : null
        sourceApplicationSecurityGroups: (contains(nsgSecurityRule.properties, 'sourceApplicationSecurityGroupIds') && (!empty(nsgSecurityRule.properties.sourceApplicationSecurityGroupIds))) ? concat([], array(json('{"id": "${nsgSecurityRule.properties.sourceApplicationSecurityGroupIds[0]}", "location": "${location}"}'))) : null
        destinationApplicationSecurityGroups: (contains(nsgSecurityRule.properties, 'destinationApplicationSecurityGroupIds') && (!empty(nsgSecurityRule.properties.destinationApplicationSecurityGroupIds))) ? concat([], array(json('{"id": "${nsgSecurityRule.properties.destinationApplicationSecurityGroupIds[0]}", "location": "${location}"}'))) : null
      }
    }]
  }
}

// Define Outputs
output nsgName string = networkSecurityGroup.name
