@isTest
public class Calculator2Test {
    @isTest
    private static void testMethod1() {
     string returnMsg= Calculator2.printAndReturnMessage('something else');  
     system.assertEquals('something else..... ok cool', returnMsg); 
    }
     @isTest
     private static void testMethodAdd1() {
      integer sum1=Calculator2.add(5, 9); 
      System.assertEquals(14, sum1); 
     }
     @isTest
     private static void TestMethod2() {
      Integer sum1= Calculator2.add(9, 8, 8);  
      System.assertEquals(25, sum1);
     }
     
    }

