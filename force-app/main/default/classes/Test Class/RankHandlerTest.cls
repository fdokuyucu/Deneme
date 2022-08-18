@isTest
public  class RankHandlerTest {
    @isTest
    private static void rankPrizeTest(){
       RankHandler test1= new RankHandler();
       string a=test1.rankPrize(1);
       System.assertEquals('Gold', a);

       string b=test1.rankPrize(2);
       System.assertEquals('Silver', b);

       string c=test1.rankPrize(3);
       System.assertEquals('Platinum', c);

       string d=test1.rankPrize(8);
       System.assertEquals('top 10', d);

       string e=test1.rankPrize(11);
       System.assertEquals('participant Certificate', e);

    }
    @isTest
    private static void rankPrizeSwitch(){
       RankHandler test1= new RankHandler();
       string a=test1.rankPrizeSwitch(1);
       System.assertEquals('Gold', a);

       string b=test1.rankPrizeSwitch(2);
       System.assertEquals('Silver', b);

       string c=test1.rankPrizeSwitch(3);
       System.assertEquals('Bronze', c);

       string d=test1.rankPrizeSwitch(8);
       System.assertEquals('Top 10', d);

       string e=test1.rankPrizeSwitch(11);
       System.assertEquals('thank you for participating', e);
}
}