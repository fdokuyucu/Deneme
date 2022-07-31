public  class collections {
    public static string monthAll(integer i) {
        List<String> lstMonth= new List<String>();
        String output_month= '';
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('December');
        lstMonth.add('November');
        Integer SizeOfMonth= lstMonth.size();
        
        if (i>=0 && i<SizeOfMonth ) {
            output_month = lstMonth[i-1];
        } else {
            output_month='Not a valid Month';
        }
        return output_month;
    }
}