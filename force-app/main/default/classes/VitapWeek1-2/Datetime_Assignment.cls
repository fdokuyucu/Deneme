public class Datetime_Assignment {
    public void diffofDate(){
        date varTomorrowDate = date.newInstance(2022,7,14);
        date varTodayDate = date.newInstance(2022, 7, 13);
        Integer diffrentDate = varTomorrowDate.daysBetween(varTodayDate);
        System.debug('tomorrow and today diffrent is = ' + diffrentDate);
    }

    public void Timecheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022, 7, 14, 07, 00, 00);
        Datetime var10DaysDateTime = Datetime.newInstanceGmt(2022, 7, 23, 09, 00, 00);
        Long varDateTimeLong= 12339874361L;
        Datetime days7added = varTomorrowDatetime.addDays(7);
        Datetime days10added =var10DaysDateTime.addDays(10);

        System.debug('this is tomorrow date ' +varTomorrowDatetime);
        System.debug('this is 10 days later date '+ var10DaysDateTime);
        System.debug('this long date '+ varDateTimeLong);
        System.debug('this is 7 days added date '+ days7added);
        system.debug('this is 10 days added date ' + days10added);


    }
}
