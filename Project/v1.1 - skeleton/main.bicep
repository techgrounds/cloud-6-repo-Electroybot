@description('Boolean to deploy VM. Set to false to deploy Key Vault and Infra first')
param deployVM bool

@description('Key Vault Name.')
param keyVaultName string

@description('Key Vault Name.')
param storageAccountName string

@description('Tags for resource.')
param tags object = {}

@description('Array of App NSG Rules.')
param appNSGRules array = []

@description('Array of Management NSG Rules.')
param managementNSGRules array = []

@description('App VM OS image reference.')
param appVMSSImageReference object

@description('Specifies the OS disk for App VM.')
param appVMSSOSDisk object

@description('Management VM OS image reference.')
param managementVMImageReference object

@description('Specifies the OS disk for Management VM.')
param managementVMOSDisk object

@description('Array of backend address pools.')
param appLBBackendAddressPools array = []

@description('Array of containing all load balancing rules.')
param appLBRules array = []

@description('Array of containing all load balancing probes.')
param appLBProbes array = []

// Deploy Key Vault
module keyVault 'modules/keyVault.bicep' = {
  name: 'deploy-keyVault'
#disable-next-line explicit-values-for-loc-params
  params: {
    name: keyVaultName
    tags: tags
  }
}

// Deploy Storage Sccount
module storageAccount 'modules/storageAccount.bicep' = {
  name: 'deploy-storageAccount'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: storageAccountName
  }
}

// Deploy App Network Security Group
module appNSG 'modules/networkSecurityGroup.bicep' = {
  name: 'deploy-appNSG'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'app-prd-nsg'
    networkSecurityGroupSecurityRules: appNSGRules
  }
}

// Deploy Management Network Security Group
module managementNSG 'modules/networkSecurityGroup.bicep' = {
  name: 'deploy-managementNSG'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'app-management-nsg'
    networkSecurityGroupSecurityRules: managementNSGRules
  }
}

// Deploy App Virtual Network
module appVirtualNetwork 'modules/virtualNetwork.bicep' = {
  name: 'deploy-appVirtualNetwork'
#disable-next-line explicit-values-for-loc-params
  params: {
    name: 'app-prd-vnet'
    addressPrefixes: [
      '10.10.10.0/24'
    ]
    subnets: [
      {
        name: 'default'
        addressPrefix: '10.10.10.0/24'
      }
    ]
    networkSecurityGroupName: appNSG.outputs.nsgName
  }
}

// Deploy Management Virtual Network
module managementVirtualNetwork 'modules/virtualNetwork.bicep' = {
  name: 'deploy-managementVirtualNetwork'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'management-prd-vnet'
    addressPrefixes: [
      '10.20.20.0/24'
    ]
    subnets: [
      {
        name: 'default'
        addressPrefix: '10.20.20.0/24'
      }
    ]
    networkSecurityGroupName: managementNSG.outputs.nsgName
  }
}

// Deploy App to Management Virtual Network Peering
module peeringAppToManagement 'modules/virtualNetworkPeering.bicep' = {
  name: 'deploy-peeringAppToManagement'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'peer-app-prd-vnet-To-management-prd-vnet'
    localVnetName: appVirtualNetwork.outputs.virtualNetworkName
    remoteVirtualNetworkId: managementVirtualNetwork.outputs.virtualNetworkId
  }
}

// Deploy Management to App Virtual Network Peering
module peeringManagementToApp 'modules/virtualNetworkPeering.bicep' = {
  name: 'deploy-peeringManagementToApp'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'peer-management-prd-vnet-To-app-prd-vnet'
    localVnetName: managementVirtualNetwork.outputs.virtualNetworkName
    remoteVirtualNetworkId: appVirtualNetwork.outputs.virtualNetworkId
  }
}

// Deploy Recovery Service Vault
module recoveryServicesVault 'modules/recoveryServicesVault.bicep' = {
  name: 'deploy-rsv'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'rsv-prd-03'
  }
}

// Refer existing Keyvault to get VM username and password
resource keyVaultRef 'Microsoft.KeyVault/vaults@2019-09-01' existing = {
  name: keyVaultName
  scope: resourceGroup()
}

// Deploy Management Web Virtual Machine
module managementVirtualMachine 'modules/virtualMachine.bicep' = if (deployVM == true) {
  name: 'deploy-managementVirtualMachine'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'management-prd'
    zones: [
      1
    ]
    imageReference: managementVMImageReference
    osDisk: managementVMOSDisk
    subnetId: managementVirtualNetwork.outputs.subnetResourceIds[0]
    adminUsername: keyVaultRef.getSecret('adminUsername')
    adminPassword: keyVaultRef.getSecret('adminPassword')
    recoveryServicesVaultName: recoveryServicesVault.outputs.recoveryServicesVaultName
    recoveryServicesVaultId: recoveryServicesVault.outputs.recoveryServicesVaultId
  }
  dependsOn: [
    keyVault
    managementVirtualNetwork
  ]
}

// Deploy Load Balancer
module loadBalancers 'modules/loadBalancers.bicep' = {
  name: 'deploy-loadBalancers'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'app-prd'
    zones: [
      2
    ]
    LBBackendAddressPools: appLBBackendAddressPools
    LBProbes: appLBProbes
    LBRules: appLBRules
  }
}

// Deploy App Web Virtual Machine Scale Set
module appVMSS 'modules/virtualMachineScaleSets.bicep' = if (deployVM == true) {
  name: 'deploy-webVMSS'
  #disable-next-line explicit-values-for-loc-params
  params: {
    name: 'app-prd'
    adminUsername: keyVaultRef.getSecret('adminUsername')
    adminPassword: keyVaultRef.getSecret('adminPassword')
    imageReference: appVMSSImageReference
    osDisk: appVMSSOSDisk
    subnetId: appVirtualNetwork.outputs.subnetResourceIds[0]
    lbPoolID: loadBalancers.outputs.lbPoolID
    zones: [
      2
    ]
  }
  dependsOn: [
    loadBalancers
  ]
}

