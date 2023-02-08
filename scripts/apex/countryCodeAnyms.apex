//access custom setting here
map<string, country_code__c> allCountryCode = country_code__c.getAll();
System.debug('All country code --> '+allCountryCode);

for (string eaCntry : allCountryCode.keyset()) {
    System.debug('Country name is '+eaCntry+' its code is '+allCountryCode.get(eaCntry).code__c);
}