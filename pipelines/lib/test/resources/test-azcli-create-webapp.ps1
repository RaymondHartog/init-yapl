..\..\deploy\resources\azcli-create-webapp.ps1 `
        -resourceGroupName 'rg-clientportal-development-ray-dev' `
        -location 'westeurope' `
        -appServiceName 'webappray628736' `
        -instrumentationKey 'b75ec21e-6092-4ceb-9a65-13e758163d67' `
        -resourceTags 'CostCenter=testCostCenter Owner=testOwner' `
        -sku 'S1' `
        -workers 1