public  class TurkishLesson2 {
    public static void numberCompare(integer a, integer b) {
        if (a>b) {
            System.debug('Buyuk sayi ==>> ' + a);
        } else if (b>a){
            System.debug('Byuk sayi ==>>' +b);
        } else {
            System.debug('iki sayi esittir ');
        }       
    }
    public static void NumberCompareMath(integer a,integer b) {
        Integer bigNumber= math.max(a, b);
        System.debug('Buyuk sayi ==>> ' +bigNumber);
    }
    public static void siparis(string Order, integer adet) {
        Integer ucret;
        if (order=='ekmek') {
            ucret=adet*1;
            System.debug('ekmek icin odeyeceginiz miktar ==> '+ ucret);
        } else if (order=='simit') {
            ucret=adet*2;
            System.debug('simit icin odeyeceginiz miktar ==> '+ ucret);
        } else if (order=='kek') {
            ucret=adet*3;
            System.debug('kek icin odeyeceginiz miktar ==> '+ ucret);
        } else {
            System.debug('boyle bir urun eliomizde bulunmamaktadir.');
        }
    }
        public static integer sum(integer n) {
            Integer toplam=0;
            for(Integer i = 1 ; i <= n ; i++ ) {
            toplam +=i;
        }
          return toplam;
    }
}
