..\..\deploy\resources\azcli\azcli-core-resource-group.ps1 `
    -resourceGroupName 'rg-ray-dev-01' `
    -location 'westeurope' `
    -resourceTags 'CostCenter="testCostCenter" Owner="testOwner"' `
    -lockForDelete 'true' `
    -mode 'create'


..\..\deploy\resources\azcli\azcli-core-resource-group.ps1 `
    -resourceGroupName 'rg-ray-dev-01' `
    -location 'westeurope' `
    -resourceTags 'CostCenter=testCostCenter Owner=testOwner' `
    -lockForDelete 'true' `
    -mode 'delete'