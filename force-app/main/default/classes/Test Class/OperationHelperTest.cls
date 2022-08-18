@isTest
public  class OperationHelperTest {
    @isTest
    private static void largestOutOfTwoNumbersTest(){
        OperationHelper Test1= new OperationHelper();
        decimal a=Test1.largestOutOfTwoNumbers(9.35, 5.85);
        System.assertEquals(9.35, a);

        Decimal b=Test1.largestOutOfTwoNumbers(2.36, 3.85);
        System.assertEquals(3.85, b);

    }
    @isTest
    private static void smallestOutOfThreeNumbersTest(){
        OperationHelper Test1= new OperationHelper();
        Decimal a=Test1.smallestOutOfThreeNumbers(3.25 , 4.48, 6.35);
        System.assertEquals(3.25, a);
    }

    @isTest
    private static void sumOfPositiveIntegerTest(){
        OperationHelper Test1= new OperationHelper();
        integer a=Test1.sumOfPositiveInteger(45);
        System.assertEquals(((45*46)/2), a);

        integer b=Test1.sumOfPositiveInteger(-3);
        System.assertEquals(null, b);
    }
}
