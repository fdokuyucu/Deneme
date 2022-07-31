public class prirmitiveDataTypeDemo3 {
    public void printNewDate (){
        System.debug('create new Date instance');
     Date todayDate = date.today();
        date newDate= date.newInstance(1982,11,10);
        Date newDate2 = date.newInstance(2021, 3, 3);

        System.debug('today\'s date is = ' + todaydate);
        System.debug(newdate);
     System.debug(newdate2);
    }
    public void printNewTime (){
        time myTime = time.newInstance(18, 20, 2, 30);
        System.debug('The Time is now =' + myTime);

        Time meTime = time.newInstance(6, 00, 00, 001);
        System.debug('this my awake time = ' + meTime);
    }
    public void printDateTime(){
        date newdate =date.today();
        time newtime= time.newInstance(9, 9, 0, 0);

        Datetime dt1= Datetime.newInstance(newdate, newtime);
        System.debug('dt1 is ' + dt1);

        Datetime dt2= Datetime.newInstance(2008, 5, 25);
        System.debug('dt2 is '+ dt2);

        Datetime dt3= Datetime.newInstance(2002, 9, 12, 20, 21, 55);
        System.debug('dt3 is '+ dt3);

        Long longNumber= 0L;
        Datetime dt4= Datetime.newInstance(longNumber);
        System.debug('dt4 is '+ dt4);

        long longNumber2 = 88912345678900L;
        Datetime dt4_2 = Datetime.newInstance(longNumber2);
        System.debug('dt4_2  is '+ dt4_2);

        Datetime dt6 = Datetime.now();
        System.debug('dt6 is '+ dt6);

        Datetime dt5= Datetime.newInstanceGmt(2002, 5, 25,6 ,6,5);
        System.debug('dt5 is '+ dt5);


    }

}
