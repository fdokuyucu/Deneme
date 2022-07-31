public  class MathPractice {
    public Decimal practiceOne(Decimal x, Decimal y) {
        Decimal cevre = x+x+y+y;
        System.debug('dikdortgen cevre uzunlugu ==>> ' + cevre);   
        return cevre;     
    }
    public Decimal practicetwo(Decimal a,Decimal b ){
        decimal kitleEndex= a/(b*b);

        if (kitleEndex<=25) {
            System.debug('ideal kilodasiniz');
            
        } else if ( kitleEndex>25 || kitleEndex<30) {
            System.debug('Kilo aliyorsunuz dikkat edin');
            
        } else {
            System.debug('Hemen Rezime baslayin');
        }
        
        return kitleEndex;
    }
}
