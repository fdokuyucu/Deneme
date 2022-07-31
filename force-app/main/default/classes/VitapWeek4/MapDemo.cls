public class MapDemo {
    public static string retrieveMonth(integer m) {
        String month = '';

        map<integer, String> monthMap = new map<integer, String>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'Aplril');
        
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');

        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        Boolean keyExists= monthMap.containsKey(m);
        if (keyExists) {
            month = monthMap.get(m);
        } else {
            month= 'Month does not exist. please behave';
        }

        
        return month;

    }
}
