public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        date todayDate= date.today();
        Date birtdate =date.newInstance(1982, 11, 10);
        Integer ageInMonths = birtdate.monthsBetween(todayDate);
        System.debug('Fatih age is in MONTHS ' + ageInMonths);

    }
     public void calculateAgeInDays(){
        date todayDate= date.today();
        Date birtdate =date.newInstance(1982, 11, 10);
        Integer ageInDays = birtdate.daysBetween(todayDate);
        System.debug('Fatih age is in Days ' + ageInDays);

    }
}
