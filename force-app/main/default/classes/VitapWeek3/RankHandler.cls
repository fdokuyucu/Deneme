public  class RankHandler {
    public string rankPrize(Integer rank) {
        String prize='';
        if (rank ==1 ){
            prize = 'Gold';
            }else if (rank==2) {
            prize='Silver';
            }else if (rank==3) {
            prize='Platinum';            
            }else if (rank<=10) {
                    prize= 'top 10';
                }else {
                    prize='participant Certificate';
                }
            
            return prize;

    }
    public string rankPrizeSwitch(integer rank){
       string prize = '';
        switch on rank{
            when 1{
                prize = 'Gold';
            } 
            when 2{
                prize = 'Silver';
            }
            when 3{
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Top 10';
            } 
            when else{
                prize = 'thank you for participating';
            }

        }

       return prize;
}
}
