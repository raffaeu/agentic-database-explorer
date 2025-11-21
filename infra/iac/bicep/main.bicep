// Placeholder Bicep template for core resources
// TODO: Extend with Azure SQL, Container Apps environment, Key Vault, Log Analytics

param location string = resourceGroup().location

// Example storage account to demonstrate structure
resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'agenticst${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    allowBlobPublicAccess: false
    minimumTlsVersion: 'TLS1_2'
  }
}

// Additional resources will be added here in future iterations.
