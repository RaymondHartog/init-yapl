#Set to Dev Scription
az account set --subscription '0a75727c-7f95-41a5-9978-368b7b21c651'

# Create WebApp
az group deployment create `
    --resource-group 'rg-clientportal-development-ray-dev' `
    --template-file '..\..\deploy\resources\arm-create-application-gateway-no-ddos-protection.json' `
    --parameters @test-arm-create-application-gateway.parameters.json `
    --mode Incremental