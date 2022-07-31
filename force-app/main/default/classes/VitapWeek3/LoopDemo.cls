public class LoopDemo {
    public void print_int_While(){
        Integer count=1;
        while (count<=25) {
            System.debug(count);
            count++;
        }
    }
    public void print_N_numbers(integer n){
        for(Integer i=0;i<n; i++){
            System.debug('1 den 20 ye kadar yaz' + i);
        }
    }
    public void print_N_Odd_numbers(Integer startInt, Integer endInt){
        for (integer i=startInt; i<=endInt; i++) {
            Integer modI=Math.mod(i, 2);
            if(modI==1) System.debug('2 e bolumunden 1 kalan sayilar= '+i);
            
        }
          
            
       
    }
}
