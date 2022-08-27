Map<String,Country_Code__c> mapCS= Country_Code__c.getAll();
set<String> countries = MapCS.keySet();
for(string eachCountry : countries){
    Country_Code__c cs= mapCS.get(eachCountry);
    string countryCode = cs.Country_Code__c;
    System.debug('country is'+ eachCountry + ',its code is '+ countryCode);
}
System.debug('map of country code'+  mapCS);