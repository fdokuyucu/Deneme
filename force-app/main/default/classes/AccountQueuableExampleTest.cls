@isTest
public with sharing class AccountQueuableExampleTest {
    @istest
    public static void testQueueable() {
        List<Account> listAcc= new List<Account>();
        for (Integer i = 0; i < 500;i++){
            Account a3 = new Account();
            a3.Name='PI Test';
            a3.Industry='Banking';
            a3.Type='Customer - Direct';
            listAcc.add(a3);

        }      
        insert listAcc;
        AccountQueueableExample aq= new AccountQueueableExample(listAcc);

        test.startTest();
        id JobId=System.enqueueJob(aq);
        test.stopTest();

        List<Account> accounts = [select name from account where name like '%SI%'];
        System.assertEquals(500, accounts.size());

    }
}
