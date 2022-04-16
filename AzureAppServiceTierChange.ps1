param(
    [Parameter()]
    [string]$subscription,
    [Parameter()]
    [string]$resourceGroup,
    [Parameter()]
    [string]$appServicePlan,
    [Parameter()]
    [string]$appService,
    [Parameter()]
    [string]$sku
)

az account set --subscription $subscription
az appservice plan update --name $appServicePlan --resource-group $resourceGroup --subscription "$subscription" --sku $sku
az webapp restart --name $appService --resource-group $resourceGroup --subscription "$subscription"
