param(
 [Parameter(Mandatory=$True)]
 [string]
 $resourceGroupName,

 [string]
 $location = "westeurope",

 [Parameter(Mandatory=$True)]
 [string]
 $appServiceName,
 
 [Parameter(Mandatory=$True)]
 [string]
 $instrumentationKey,

 [string]
 $resourceTags = "CostCenter=empty Owner=empty",

 [string]
 $sku = "S1",

 [int16]
 $workers = 1
)

Write-Output 'Create AppService Plan'
az appservice plan create --resource-group $resourceGroupName --location $location --name $appServiceName-HostingPlan --number-of-workers $workers --sku $sku --tags $resourceTags

Write-Output 'Create WebApp'
az webapp create --resource-group $resourceGroupName --plan $appServiceName-HostingPlan --name $appServiceName --tags $resourceTags

Write-Output 'Update WebApp - https only'
az webapp update --resource-group $resourceGroupName --name $appServiceName --https-only

Write-Output 'Create Slot staging'
az webapp deployment slot create --name $appServiceName --resource-group $resourceGroupName --slot staging

Write-Output 'Update WebApp staging slot - https only'
az webapp update --resource-group $resourceGroupName --name $appServiceName --slot staging --https-only

Write-Output 'Link to Application Insights in management resource group'
az webapp config appsettings set --resource-group $resourceGroupName --name $appServiceName --settings WEBSITE_NODE_DEFAULT_VERSION=6.9.1 APPINSIGHTS_INSTRUMENTATIONKEY=$instrumentationKey

