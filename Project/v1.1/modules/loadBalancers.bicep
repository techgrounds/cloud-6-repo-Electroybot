// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('Input Prefix to be used to name Public IP, Network Interface, Virtual Machine and OS disk.')
param name string

@description('Availability zone')
@allowed([
  1
  2
  3
])
param zones array

@description('Array of backend address pools.')
param LBBackendAddressPools array = []

@description('Array of containing all load balancing rules.')
param LBRules array = []

@description('Array of containing all load balancing probes.')
param LBProbes array = []

// Set Variables
var loadBalancerName = '${name}-lb'
var publicIPAddressName = '${name}-pip'

// Deploy Public IP
resource publicIpAddress 'Microsoft.Network/publicIPAddresses@2021-05-01' = {
  name: publicIPAddressName
  location: location
  tags: tags
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  zones: zones
  properties: {
    publicIPAllocationMethod: 'Static'
  }
}

// Deploy Load Balancer
resource loadBalancer 'Microsoft.Network/loadBalancers@2021-05-01' = {
  name: loadBalancerName
  location: location
  tags: tags
  sku: {
    name: 'Standard'
  }
  properties: {
    frontendIPConfigurations: [
      {
        name: 'LoadBalancerFrontEnd'
        properties: {
          publicIPAddress: {
            id: publicIpAddress.id
          }
        }
      }
    ]
    backendAddressPools: [for backendAddressPool in LBBackendAddressPools: {
      name: backendAddressPool.name
    }]
    loadBalancingRules: [for loadBalancingRule in LBRules: {
      name: loadBalancingRule.name
      properties: {
        frontendIPConfiguration: {
          id: az.resourceId('Microsoft.Network/loadBalancers/frontendIPConfigurations', loadBalancerName, 'LoadBalancerFrontEnd')
        }
        backendAddressPool: {
          id: az.resourceId('Microsoft.Network/loadBalancers/backendAddressPools', loadBalancerName, loadBalancingRule.backendAddressPoolName)
        }
        protocol: loadBalancingRule.protocol
        frontendPort: loadBalancingRule.frontendPort
        backendPort: loadBalancingRule.backendPort
        enableFloatingIP: false
        idleTimeoutInMinutes: 5
        probe: {
          id: '${az.resourceId('Microsoft.Network/loadBalancers', loadBalancerName)}/probes/${loadBalancingRule.probeName}'
        }
      }
    }]
    probes: [for probe in LBProbes: {
      name: probe.name
      properties: {
        protocol: probe.protocol
        port: probe.port
        intervalInSeconds: probe.intervalInSeconds
        numberOfProbes: probe.numberOfProbes 
      }
    }]
  }
}

// Define Outputs
output lbPoolID string = loadBalancer.properties.backendAddressPools[0].id
