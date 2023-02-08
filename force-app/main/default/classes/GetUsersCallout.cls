public class GetUsersCallout {
   
    public static HttpResponse getUsers() {

//1. Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://gorest.co.in/public/v2/users');
        req.setMethod('GET');
   
//2. Prepare internet
        Http http = new Http();
   
//3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = Http.send(req);

//4. Process HttpResponse 
        if(response.getStatusCode()==200){
            String jsonString = response.getBody();
            list<ContactWrapper> ConLst = (list<ContactWrapper>)JSON.deserialize(jsonString, list<ContactWrapper>.class);
            processContacts(ConLst);

        }else{
            System.debug(response.getStatus());
        }
        return response;

    }

    private static void processContacts(list<ContactWrapper> ConLst) {
        List<Contact> NewConList = new List<Contact>();
        for (contactWrapper eaCon : ConLst) {
            Contact cnt = new Contact();
            
            String[] fullname =eaCon.name.split(' ');  //String Array - we used it to split the fullname into name and lastname. 
            cnt.FirstName=FullName[0];
            cnt.LastName=FullName[1];
            
            cnt.Email=eaCon.email;
            cnt.gender__c=eaCon.gender;
            cnt.Status__c=eaCon.status;
            NewConList.add(cnt);
        }
        insert NewConList;
    }
}