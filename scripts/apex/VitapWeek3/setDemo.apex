SetDemo.citySet();
SetDemo.randomIntegerset();
List<Integer> integerList = new List<Integer>();

 integerList.add(10);
 integerList.add(15);
 integerList.add(21);
 integerList.add(15);
 integerList.add(15);
 Set<Integer> sInt =SetDemo.setFormList(integerList);
 //System.debug('set is '+ sInt);

 Set<String> cities = new Set<String>();
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('Paris');
    cities.add('Fatih');
    cities.add('Berlin');
    cities.add('berlin');
Set<String> cti = SetDemo.capitalizeSet(cities);
System.debug('cities are '+ cti);
 