public class dateMarie {
    public void marieAge(){
        Date todayDate=Date.today();
        Date BirthDate=date.newInstance(1867, 11, 7);
        Integer ageYear=todayDate.year()-BirthDate.year();
        System.debug('Marie curie ' + ageYear + ' yasinda.');

        Boolean isMarieLeapYear = Date.isLeapYear(1867);
        System.debug(' is Marie BD leap year '+ isMarieLeapYear);
    }

    }
    
    

