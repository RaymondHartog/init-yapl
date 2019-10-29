
param(
    [Parameter(Mandatory=$true)]
    [string]
    $appRegistrationName,
 
    [Parameter(Mandatory=$true)]
    [string]
    $replyUrl,  #Space-separated URIs to which Azure AD will redirect in response to an OAuth 2.0 request. The value does not need to be a physical endpoint, but must be a valid URI..    

    [Parameter(Mandatory=$true)]
    [string]
    $mode
)

if ($mode -eq 'create') {

    Write-Output 'Add App Registration and reply-URLs'
    return $(az ad app create --display-name $appRegistrationName --reply-urls $replyUrl)
    
}

if ($mode -eq 'update') {


    Write-Output 'Update App Registration and reply-URLs NOT Supported yet'
    # $_replyUrls = New-Object System.Collections.Generic.List[string]

    # $_appRegId = $(az ad app list --display-name $appRegistrationName --query '[].appId' --output tsv)
    # Write-Output $_appRegId


    # $_replyUrlsCurrent = $(az ad app list --display-name $appRegistrationName --query '[].replyUrls' --output tsv)
    # Write-Output $_replyUrlsCurrent

    # for ($_replyUrlCurrent in $_replyUrlsCurrent){
    #   $_replyUrls.Add($_replyUrlCurrent)
    # }
    # $_replyUrls.Add($replyUrlNew)
    # Write-Output $_replyUrlsCurrent

    # az ad app update --id $_appRegId --reply-urls $_replyUrls
}

if ($mode -eq 'delete') {

    Write-Output 'Delete App Registration NOT Supported yet'

}