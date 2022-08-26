# Notes on the Salesforce trust API

### Request
```
https://api.status.salesforce.com/v1/instances/EU5/status/preview
```

### Response
```
{
    "key": "EU5",
    "location": "EMEA",
    "environment": "production",
    "releaseVersion": "Winter '18 Patch 14.1",
    "releaseNumber": "210.14.1",
    "status": "OK",
    "isActive": false,
    "city": "",
    "stateName": "",
    "stateCode": "",
    "countryName": "",
    "countryCode": "",
    "maintenanceWindow": "",
    "Services": [
        {
            "key": "coreService",
            "order": 1,
            "isCore": true
        },
        {
            "key": "liveAgent",
            "order": 20,
            "isCore": false
        },
        {
            "key": "search",
            "order": 5,
            "isCore": false
        },
        {
            "key": "analytics",
            "order": 10,
            "isCore": false
        },
        {
            "key": "CPQandBilling",
            "order": 100,
            "isCore": false
        },
        {
            "key": "EinsteinBots",
            "order": 110,
            "isCore": false
        },
        {
            "key": "Communities",
            "order": 200,
            "isCore": false
        },
        {
            "key": "SalesforceCMS",
            "order": 1200,
            "isCore": false
        },
        {
            "key": "ServiceCloudVoice",
            "order": 600,
            "isCore": false
        },
        {
            "key": "SALESFORCEORDERMANAGEMENT",
            "order": 1210,
            "isCore": false
        },
        {
            "key": "B2BCommerce",
            "order": 1300,
            "isCore": false
        }
    ],
    "Products": [
        {
            "key": "Salesforce_Services",
            "order": 0,
            "isActive": true
        }
    ],
    "Incidents": [],
    "Maintenances": [],
    "Tags": []
}
```