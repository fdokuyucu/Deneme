Map<String,String> mapCuntCurrency = new Map<String,String>();
mapCuntCurrency.put('india', 'rupi');
mapCuntCurrency.put('USA', 'Dollar');
mapCuntCurrency.put('Japan', 'yen');
mapCuntCurrency.put('Turkey', 'Lira');
mapCuntCurrency.put('India', 'Rupee');
mapCuntCurrency.put('india', 'Rupees');
mapCuntCurrency.put('india', 'rupee');

System.debug(mapCuntCurrency);

String TurkeyCurrency =  mapCuntCurrency.get('Turkey');
String Indiacurrency = mapCuntCurrency.get('india');

System.debug('turkey currency is '+TurkeyCurrency);
System.debug('india currency is '+ Indiacurrency);

Set<String> countrySet= mapCuntCurrency.keySet();
System.debug('counties in map: '+ countrySet);

List<String> currencisList= mapCuntCurrency.values();
System.debug('currenise are: ' + currencisList);

Set<String> countries= mapCuntCurrency.keySet();
for (string eachKey : countries) {
    String printString= ' contry is ' + eachKey;
    System.debug(printString);

    String eacvalue = mapCuntCurrency.get(eachKey);
    printString = printString + ', its currency is '+ eacvalue;

    System.debug(printString);

}