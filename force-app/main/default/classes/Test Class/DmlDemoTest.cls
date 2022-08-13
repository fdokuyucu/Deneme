@isTest
public class DmlDemoTest {
    @isTest
    private static void testInserDml1() {
        dmlDemo.dmlInsertDemo_stndObj();
        List<Account> checkAcc= [select id, name from account];
        System.assertEquals(1, checkAcc.size());
        System.assertEquals('SoftInovas', checkAcc[0].Name);
    }
}
