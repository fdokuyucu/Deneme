public  class SetDemo {
   public static void citySet() {
    Set<String> cities = new Set<String>();
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('Paris');
    cities.add('Fatih');
    cities.add('Berlin');
    cities.add('berlin');

    System.debug(cities);
   }
   public static void randomIntegerset() {
    Set<Integer> setInteger = new Set<Integer>();
    setInteger.add(10);
    setInteger.add(20);
    setInteger.add(15);
    setInteger.add(10);

    System.debug(setInteger);
 
}
    public static set<integer> setFormList(list<integer> intList) {
        Set<Integer> intSet= new Set<Integer>();

        intSet.addAll(intList);
        return intSet;
        
    }
    public static set<string> capitalizeSet(set<string> setString) {
        Set<String> capsSet = new Set<String>();
        for (string eachStr  : setString) {
            String tempStr =eachStr.capitalize();
        }
        return capsSet;
    }
}
