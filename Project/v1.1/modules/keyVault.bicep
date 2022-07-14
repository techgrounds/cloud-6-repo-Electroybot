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

@description('Optional. All secrets to create')
@secure()
param vaultSecrets object = {}

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

// Create Secrets
resource secret 'Microsoft.KeyVault/vaults/secrets@2019-09-01' = [for secret in vaultSecrets.List: {
  name: secret.name
  parent: keyVault
  properties: {
    value: secret.value 
  }
}]

// Define Outputs
output keyVaultName string = keyVault.name
output keyVaultId string = keyVault.id
