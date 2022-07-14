// Set Parameters
@description('Location for resources.')
param location string = resourceGroup().location

@description('Tags for resource.')
param tags object = {}

@description('Key Vault Name.')
@maxLength(24)
param name string

@description('Key Vault SKU.')
@allowed([
  'premium'
  'standard'
])
param vaultSku string = 'standard'

// Deploy Key Vault
resource keyVault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: name
  location: location
  tags: tags
  properties: {
    sku: {
      family: 'A'
      name: vaultSku
    }
    accessPolicies: []
    enabledForTemplateDeployment: true
    enabledForDeployment: true
    enabledForDiskEncryption: true
    tenantId: subscription().tenantId
  }
}

// Define Outputs
output keyVaultName string = keyVault.name
output keyVaultId string = keyVault.id
