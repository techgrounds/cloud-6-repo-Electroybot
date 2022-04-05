// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('Recovery Services Vault Name.')
param name string


// Deploy Recovery Service Vault
resource recoveryServicesVault 'Microsoft.RecoveryServices/vaults@2021-12-01' = {
  name: name
  location: location
  tags: tags
  sku: {
    name: 'RS0'
    tier: 'Standard'
  }
  properties: {}
}

// Define Outputs

output recoveryServicesVaultName string = recoveryServicesVault.name
output recoveryServicesVaultId string = recoveryServicesVault.id
