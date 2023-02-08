public class CovidInfoCallout {
    public static HttpResponse getCovidInfo(){
    //1. Prepare HttpRequest and wrap all the necessary data in it.
    HttpRequest request = new HttpRequest();
    request.setEndpoint ('https://api.covidtracking.com/v1/us/current.json');
    request.setMethod('GET');

    //2. Prepare internet      
    Http http = new Http();

    //3. Send the HttpRequest over the internet in order to receive HttpResponse back
    HttpResponse response = http.send(request);
    
    //4. Process HttpResponse
    if(response.getStatusCode()==200){
    string jsonString=response.getBody();
    List<CovidInfoWrapper> wrapper = (List<CovidInfoWrapper>)JSON.deserialize(jsonString, List<CovidInfoWrapper>.class);
    CovidInfoWrapper covidWrap = wrapper[0];
    List<Covid_Info__c> covidInfo = [SELECT Id, Name, Positive__c, Negative__c, Pending__c, Received_Date__c FROM Covid_Info__c WHERE Received_Date__c = TODAY ];
        if (covidInfo.isEmpty()) {
            Covid_Info__c ci = new Covid_Info__c();
            ci.Name = string.valueOf(covidWrap.state);
            ci.Positive__c=covidWrap.positive;
            ci.Negative__c= covidWrap.negative;
            ci.Pending__c = covidWrap.pending;
            ci.Received_Date__c = date.today();
            insert ci;

        } else if(!covidInfo.isEmpty()){
            covidInfo[0].Name = string.valueOf(covidWrap.state);
            covidInfo[0].Positive__c=covidWrap.positive;
            covidInfo[0].Negative__c= covidWrap.negative;
            covidInfo[0].Pending__c = covidWrap.pending;

            update covidInfo;
        }
    }
        return response;
    
}

}