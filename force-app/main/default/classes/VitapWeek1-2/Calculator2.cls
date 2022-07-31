public  class Calculator2 {
    public static string printAndReturnMessage(string msg) {
        System.debug('in the method');
        System.debug('parameter value is ' + msg);
        String r = msg+ '..... ok cool';
        return r;
        
    }
    public static integer add(integer num1, integer num2) {
        Integer sum = num1+ num2;
        return sum;
    }
    public static Integer add(integer num1, integer num2, integer num3){
        Integer sum= num1 + num2+num3;
        return sum;
    }    
}
