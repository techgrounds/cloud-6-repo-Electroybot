// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('Input Prefix to be used to name Public IP, Network Interface, Virtual Machine and OS disk.')
param name string

@description('Subnet Reference Id.')
param subnetId string

@description('Availability zone')
@allowed([
  1
  2
  3
])
param zones array

@description('VMs Size')
param vmSize string = 'Standard_D2s_v3'

@description('OS image reference.')
param imageReference object

@description('OS disk reference.')
param osDisk object

@description('VM Administrator username')
@secure()
param adminUsername string

@description('VM Administrator Password')
@secure()
param adminPassword string

@description('Scale-in policy')
param scaleInPolicy object = {
  rules: [
    'Default'
  ]
}
 
@description('Load Balancer Backend Pool Id.')
param lbPoolID string

// Deploy Virtual Machine Scale Sets
resource vmss 'Microsoft.Compute/virtualMachineScaleSets@2021-04-01' = {
  name: '${name}-prd-vmss'
  location: location
  tags: tags
  zones: zones
  properties: {
    virtualMachineProfile: {
      osProfile: {
        computerNamePrefix: 'vmssvm'
        adminUsername: adminUsername
        adminPassword: adminPassword
      }
      storageProfile: {
        imageReference: imageReference
        osDisk: {
          createOption: osDisk.createOption
          diskSizeGB: osDisk.diskSizeGB
          managedDisk: {
            storageAccountType: osDisk.managedDisk.storageAccountType
          }
        }
      }
      networkProfile: {
        networkInterfaceConfigurations: [
          {
            name: '${name}-nic'
             properties: {
               primary: true
               ipConfigurations: [
                  {
                    name: '${name}-ipconfig'
                    properties: {
                      subnet: {
                        id: subnetId
                      }
                      loadBalancerBackendAddressPools: [
                        {
                          id: lbPoolID
                        }
                      ]
                    }
                  }
               ]
             }
          }
        ]
      }
    }
    scaleInPolicy: scaleInPolicy
    upgradePolicy: {
      mode: 'Manual'
    }
  }
  sku: {
    name: vmSize
    capacity: 2
  }
}

// Configure Autoscale for VMSS
resource appAutoscale 'Microsoft.Insights/autoscalesettings@2015-04-01' = {
  name: 'autoscale'
  location: location
  tags: tags
  properties: {
    enabled: true
    name: 'autoscale'
    profiles: [
      {
        name: 'DefaultAutoscaleProfile'
        capacity: {
          default: '2'
          maximum: '5'
          minimum: '2'
        }
        rules: [
          {
            metricTrigger: {
              metricName: 'Percentage CPU'
              metricResourceUri: vmss.id
              operator: 'GreaterThan'
              statistic: 'Average'
              threshold: 60
              timeAggregation: 'Average'
              timeGrain: 'PT5M'
              timeWindow: 'PT10M'
            }
            scaleAction: {
              cooldown: 'PT10M'
              direction: 'Increase'
              type: 'PercentChangeCount'
              value: '1'
            }
          }
          {
            metricTrigger: {
              metricName: 'Percentage CPU'
              metricResourceUri: vmss.id
              operator: 'LessThan'
              statistic: 'Average'
              threshold: 20
              timeAggregation: 'Average'
              timeGrain: 'PT5M'
              timeWindow: 'PT10M'
            }
            scaleAction: {
              cooldown: 'PT10M'
              direction: 'Decrease'
              type: 'PercentChangeCount'
              value: '1'
            }
          }
        ]
      }
    ]
    targetResourceLocation: location
    targetResourceUri: vmss.id
  }
}
