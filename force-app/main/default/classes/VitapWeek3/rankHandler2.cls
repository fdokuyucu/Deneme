public class rankHandler2 {
  
    public String rankPrizeSwitch(Integer rank){
        String prize = '';
        switch on rank {
            when 1 {
                prize='Gold';
            }
            when 2 {
                prize='Silver';
            }
            when 3 {
                prize='Bronz';
            }
            when 4,5,6,7,8,9,10  {
                prize='Tolp 10';
            }
            when else {
                prize='Thank you for Participating';
            }
                }

    
    return prize;

}
}