@isTest
public  class DmlDemo2Test {
    @isTest
    private static void dmlInsertRelatedTest() {
        // prepare DATA
        Account acc = new Account();
        acc.Name='SoftInnovas Inc.';
        insert acc;
        dmlDemo2.dmlInsertRelatedDemo_1();

        List<Contact> contacts= [select id,accountId,Name from contact];
        System.assertEquals(1, contacts.size());
        System.assertEquals(acc.Id, contacts[0].AccountId);
    }
    
}
