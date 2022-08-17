@isTest
public class DmlDemo3Test {
    @isTest
    private static void TestUpdateMultiple() {
        List<account> listAccount = new list<account>();

        for (Integer i = 0; i < 200; i++) {
            account acc = new account();
            acc.name = 'SoftInnovas 15Aug v'+i;
            acc.AccountNumber = 'Accis-'+i;
            acc.Active__c = 'Yes';
            listAccount.add(acc);
        }

        system.debug('size of list = ' + listAccount.size());
        if (!listAccount.isEmpty()) {
            insert listAccount;
        }
        //Call Method
        DmlDemo3.dmlMultipleRecordUpdate_right();

        //verify using asserts
        List<Account> accounts= [select id,name from Account];
        System.assert(accounts[0].Name.contains('Fatih 4.0'));

    }
}
