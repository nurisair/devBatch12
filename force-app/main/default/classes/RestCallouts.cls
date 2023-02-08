public with sharing class RestCallouts {
    /*
    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET
    public static HttpResponse getAnimals(){
        
        //1. Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest req = new HttpRequest(); 
        req.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('GET'); //ALWAYS UPPERCASE LETTERS not get or Get//
        
        //2. Prepare internet
        Http http=new Http();
        
        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse Resp = http.send(req);

        //4. Process HttpResponse (we just debug it for now)
        system.debug(Resp.getStatusCode());
        system.debug(Resp.getBody());
        return Resp;
    }

    public static HttpResponse getAirlines(){      
    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: GET
        //1. Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest req2 = new HttpRequest();
        req2.setEndpoint('https://api.instantwebtools.net/v1/airlines');
        req2.setMethod('GET');

        //2. Prepare internet        
        Http http=new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(req2);
        
        //4. Process HttpResponse (we just debug it for now)
        If(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            //Convert this response body into the List of Airlines
            List<AirlineWrapper> wrapper = (list<AirlineWrapper>)JSON.deserialize(jsonString, List<AirlineWrapper>.class);
            //covert wrapper into List<Airline__c>
            List<Airline__c> airways = new List<Airline__c>();
                for(AirlineWrapper aw : wrapper){
                    if(aw.id != null && aw.id.length() <3 ){
                        Airline__c airline = new Airline__c();
                        airline.Name = aw.id;
                        airline.Country__c = aw.country;
                        airline.Established__c = aw.established;
                        airline.HQ__c = aw.head_quarters;
                        airline.Logo_URL__c = aw.logo;
                        airline.Name__c = aw.name;
                        airline.Slogan__c = aw.Slogan;
                        airline.Website__c = aw.website;
                        airways.add(airline);
                    }
                }
            try {
                insert airways;
            } catch (Exception ex) {
                system.debug(ex.getMessage());
            }
        }
        return response;
    }  
    
    //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method: GET
    public static HttpResponse getEmployees(){
        //1. Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');

        //2. Prepare internet      
        Http http = new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        if(response.getStatusCode()==200){
            String jsonString = response.getBody();
            system.debug(jsonString);
            //Convert the jsonString into Employee Response class
            EmployeeResponse empRes = (EmployeeResponse)JSON.deserialize(jsonString, EmployeeResponse.class);
            List<EmployeeResponse.EmployeeWrapper> wrappers = empRes.data;
                //Convert each employeeWrapper into employee__c sObject record
                list<Employee__c> employees = new list<Employee__c>();
                for (EmployeeResponse.EmployeeWrapper eaWrap : wrappers) {
                    Employee__c emp = new Employee__c();
                    emp.Name = String.valueOf(eaWrap.id);
                    emp.Username__c = eaWrap.username;
                    emp.Employee_Name__c = eaWrap.name;
                    emp.Email__c = eaWrap.email;
                    emp.Gender__c = eaWrap.gender;
                    emp.Designation__c = eaWrap.designation;
                    emp.Phone__c= eaWrap.phone_number;
                    emp.Complete_Address__c = eaWrap.complete_address;
                    employees.add(emp);
                }
                try {
                    insert employees;
                } catch (Exception ex) {
                    System.debug(ex.getMessage());
                }


        }
        return response;

    }*/

    //Endpoint; https://grup5-dev-ed.develop.my.salesforce.com/services/apexrest/Cases/5006S000024k7rMQAQ
    //Http Method: GET
    public static HttpResponse getCasesUsingNC(){
        //1. Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NJ_Dev_Org/services/apexrest/Cases/5006S000024k7rMQAQ');
        request.setMethod('GET');

        //2. Prepare internet    
        Http http=new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse
        system.debug(response.getStatusCode());
        system.debug(response.getStatus());
        system.debug(response.getBody());
        
        return response;
    }

    // Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    // Http Method: POST
    public static HttpResponse postAnimals(){
    
    //1. Prepare HttpRequest and wrap all the necessary data in it.
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
    request.setMethod('POST');
    String body = '{"name":"mighty mouse"}';
    request.setBody(body);
    request.setHeader('content-Type', 'aplication/json;charset=UTF-8');

    //2. Prepare internet    
    Http http = new Http();
    //3. Send the HttpRequest over the internet in order to receive HttpResponse back
    HttpResponse response = http.send(request);
    //4. Process HttpResponse
    if(response.getStatusCode()==201){
        system.debug('Request has been processed successfully');
    }else{
        System.debug('Something went wrong creating animal info '+ response.getBody());
    }
    return response;

    }        
}