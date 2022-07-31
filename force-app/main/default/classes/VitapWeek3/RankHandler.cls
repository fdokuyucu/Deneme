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
}
