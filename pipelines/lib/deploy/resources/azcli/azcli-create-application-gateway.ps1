param(
    [Parameter(Mandatory=$true)]
    [string]
    $applicationGatewayName,

    [Parameter(Mandatory=$true)]
    [string]
    $publicIPAddressName,

    [Parameter(Mandatory=$true)]
    [string]
    $virtualNetworkName,

    [Parameter(Mandatory=$true)]
    [string]
    $addressPrefix,

    [Parameter(Mandatory=$true)]
    [string]
    $subnetPrefix,

    [Parameter(Mandatory=$true)]
    [string]
    $managementResourceGroup,

    $applicationGatewaySize = "WAF_Medium",

    $capacity = 2,
 
    $wafEnabled = $true ,

    $wafMode ="Prevention",

    $wafRuleSetType = "OWASP",

    $wafRuleSetVersion = "3.0",

    [Parameter(Mandatory=$true)]
    [string]
    $clientPortalFqdn,

    [Parameter(Mandatory=$true)]
    [string]
    $keyVaultName,

    [Parameter(Mandatory=$true)]
    [string]
    $logAnalyticsWorkspaceName,

    [Parameter(Mandatory=$true)]
    [string]
    $ddosProtectionPlan,

    [Parameter(Mandatory=$true)]
    [string]
    $certData,

    [Parameter(Mandatory=$true)]
    [string]
    $certPw
)