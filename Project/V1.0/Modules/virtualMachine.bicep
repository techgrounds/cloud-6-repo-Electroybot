// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('Input Prefix to be used to name Public IP, Network Interface, Virtual Machine and OS disk.')
param name string

@description('Public IP Address Name.')
param publicIPAddressName string = '${name}-pip'

@description('Network Interface Name.')
param networkInterfaceName string = '${name}-nic'

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

@description('Optional. Recovery service vault name to add VMs to backup.')
param recoveryServicesVaultName string

@description('Recovery Services Vault Id')
param recoveryServicesVaultId string

@description('Backup Policy Name')
param backupPolicyName string = 'DefaultPolicy'

// Deploy Public IP
resource publicIpAddress 'Microsoft.Network/publicIPAddresses@2021-05-01' = {
  name: publicIPAddressName
  location: location
  tags: tags
  sku: {
    name: 'Basic'
    tier: 'Regional'
  }
  zones: zones
  properties: {
    publicIPAllocationMethod: 'Dynamic'
  }
}

// Deploy Network Interface
resource networkInterface 'Microsoft.Network/networkInterfaces@2021-03-01' = {
  name: networkInterfaceName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: subnetId
          }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIpAddress.id
          }
        }
      }
    ]
  }
}

// Deploy Virtual Machine
resource virtualMachine 'Microsoft.Compute/virtualMachines@2021-07-01' = {
  name: '${name}-prd-vm'
  location: location
  tags: tags
  zones: zones
  properties: {
    hardwareProfile: {
      vmSize: vmSize
    }
    storageProfile: {
      imageReference: imageReference
      osDisk: {
        name: '${name}-disk-os'
        createOption: osDisk.createOption
        diskSizeGB: osDisk.diskSizeGB
        managedDisk: {
          storageAccountType: osDisk.managedDisk.storageAccountType
        }
      }
    }
    osProfile: {
      computerName: '${name}-prd-vm'
      adminUsername: adminUsername
      adminPassword: adminPassword
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterface.id
        }
      ]
    }
  }
}

// Add VM to Backup Protected items
resource backupVM 'Microsoft.RecoveryServices/vaults/backupFabrics/protectionContainers/protectedItems@2021-06-01' = {
  name: '${recoveryServicesVaultName}/Azure/iaasvmcontainer;iaasvmcontainerv2;${resourceGroup().name};${virtualMachine.name}/vm;iaasvmcontainerv2;${resourceGroup().name};${virtualMachine.name}'
  location: location
  properties: {
    protectedItemType: 'Microsoft.Compute/virtualMachines'
    policyId: '${recoveryServicesVaultId}/backupPolicies/${backupPolicyName}'
    sourceResourceId: virtualMachine.id
  }
}
