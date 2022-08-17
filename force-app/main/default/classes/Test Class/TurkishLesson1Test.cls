@isTest
public class TurkishLesson1Test {
    @isTest
    private static void Method1Test() {
        string s = 'Fatih';
        integer uz= TurkishLesson1.metot1(s);
        System.assertEquals(5, uz);
    }
    @isTest
    private static void MethodTest2() {
        integer a=100000;
        integer ks= TurkishLesson1.metot2(a);
        System.assertEquals(6, ks);
    }
    @isTest
    private static void sumTest() {
        Integer a=5;
        integer b=8;
        integer toplam= TurkishLesson1.sum(a, b);
        System.assertEquals(13, toplam);
    }
    @isTest
    private static void CarpTest() {
        Integer carp1=TurkishLesson1.carp(8, 5);
        system.assertEquals(40, carp1);
    }
}

