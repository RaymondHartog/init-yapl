# Set to Dev Scription
az account set --subscription '0a75727c-7f95-41a5-9978-368b7b21c651'

# Create App Registration with reply urls
..\..\deploy\resources\azcli-core-app-registration.ps1 `
    -appRegistrationName 'appregray01' `
    -replyUrl "https://rayweb6785ui.azurewebsites.net" `
    -mode 'create'