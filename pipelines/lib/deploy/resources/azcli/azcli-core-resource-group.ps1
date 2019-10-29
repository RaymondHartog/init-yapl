
param(
    [Parameter(Mandatory=$true)]
    [string]
    $resourceGroupName,
   
    [Parameter(Mandatory=$true)]
    [string]
    $location,
   
    [Parameter(Mandatory=$true)]
    [string]
    $resourceTags,
    
    [Parameter(Mandatory=$true)]
    [string]
    $lockForDelete,

    [Parameter(Mandatory=$true)]
    [string]
    $mode
)
    [System.Convert]::ToBoolean($lockForDelete)

if ($mode -eq 'create') {

    Write-Output 'Create Resource Group'
    az group create --name $resourceGroupName --location $location --tags $resourceTags
    
    if ($lockForDelete) {
        Write-Output 'Lock Resource Group for Delete'
        az lock create --name LockRGForeDelete --lock-type CanNotDelete --resource-group $resourceGroupName
    }
}

if ($mode -eq 'delete') {
    
    if ($lockForDelete) {
        Write-Output 'Remove any existing delete lock'
        az lock delete --name LockRGForeDelete --resource-group $resourceGroupName
    }

    Write-Output 'Delete Resource Group'
    az group delete --name $resourceGroupName --yes -y
}

