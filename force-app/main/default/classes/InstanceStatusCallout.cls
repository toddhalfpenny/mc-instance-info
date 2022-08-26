public with sharing class InstanceStatusCallout {

    public static HttpResponse makeGetCallout(String instance) {
        System.debug('Making callout for ' + instance);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.status.salesforce.com/v1/instances/' + instance + '/status/preview');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug(response);

        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());

            String location = (String) results.get('location');
            String environment = (String) results.get('environment');
            String releaseVersion = (String) results.get('releaseVersion');
            System.debug('Received the following response:' + location + ':' + environment + ':' + releaseVersion);
        }
        return response;
    }

}