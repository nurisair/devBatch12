map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rs');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country and currency ' + mapCntCurrency);

string currencyTR = mapCntCurrency.get('Turkiye');
system.debug(currencyTR);

string cntry = 'USA';
string currencyCT = mapCntCurrency.get(cntry);
system.debug(cntry+ ' currency is '+ currencyCT);

Set<String> countryKeySet = mapCntCurrency.keySet();
System.debug('Keys are '+countryKeySet);

List<String> cntValSet=mapCntCurrency.values();
System.debug('Values are '+cntValSet);

Set<String> ct1 = mapCntCurrency.keySet();
for(string eaCt : ct1){
//System.debug('Each Country is '+ eaCt);
string eaCr = mapCntCurrency.get(eaCt);
//system.debug('Curruncies --->'+ eaCr);
system.debug('Country is '+eaCT+ ', its currency is '+eaCr+'.');
}