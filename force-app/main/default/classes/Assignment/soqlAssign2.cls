public  class soqlAssign2 {
    public static void avarage1soql() {
        AggregateResult[] avrg1 = [select AVG(NumberOfEmployees)FROM Account];
        System.debug('avarage of employee is ' + avrg1);
    }
    public static void avarage2soql() {
        AggregateResult[] avrg2 = [select industry, AVG(NumberOfEmployees) FROM Account GROUP BY industry];
        for (AggregateResult eachacc : avrg2) {
            System.debug(eachacc);
        }
    public static void avarage3soql() {
        AggregateResult[] avrg3= [select MAX(NumberOfEmployees) FROM Account];
        System.debug(avrg3.get('expro'));
        for (AggregateResult  maxacc   :avrg3) {
            System.debug(maxacc);
        }

    }    
    }
}
