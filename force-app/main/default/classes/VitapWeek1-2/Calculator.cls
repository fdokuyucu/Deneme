public class Calculator {
    public void printNewMessage(String msg){
        
        System.debug(msg);
    }
    public void add(Integer a,Integer b){
        integer sum = a+b;
        System.debug(sum);
    }
    public string printAndReturnMessage(String msg){
        String returnStr= msg + '... OK Cool';
        return returnStr;
    }
    public Boolean leapYearCheck (date dt){
        Integer year = dt.year();
        Boolean lp = Date.isLeapYear(year);
        return lp;
    }
}
