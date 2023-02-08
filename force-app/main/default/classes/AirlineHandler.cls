public with sharing class AirlineHandler {
    public static void afterInsert(Map<id, Airline__c> newAirlines){ //taking a map to bulkify code

        //callout: send airlines info to authority. 
        for(Id eachAirlineId : newAirlines.keySet()){
            AirlineCallouts.postAirline(eachAirlineId);
        }
    }
}