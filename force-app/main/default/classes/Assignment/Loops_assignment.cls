public class Loops_assignment {
    public integer factorialvalue=1;

    public integer forLoops(integer n) {
        for (Integer i = 1; i <= n; i++) {
           factorialvalue=factorialvalue*i;
        }
        return factorialvalue;
    }
   
    public Integer dowhile(Integer n){
       factorialvalue=1;
        Integer x=1;
        while (x<=n) {
        factorialvalue=factorialvalue*x;
        x ++;    
        }
        return factorialvalue;
    }
}
