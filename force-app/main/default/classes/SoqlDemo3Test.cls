@isTest
public with sharing class SoqlDemo3Test {
  @TestSetup 
  static void makeData(){
    List<account> listAcc = new list<account>();
       account a = new account();
        a.name = 'SI Test';
        a.Industry = 'Energy';
        a.Type='Customer - Direct';
        listAcc.add(a);
        account a1 = new account();
        a1.name = 'UI Test';
        a1.Industry = 'Energy';
        listAcc.add(a1);

        account a2 = new account();
        a2.name = 'PI Test';
        a2.Industry = 'Banking';
        listAcc.add(a2);

        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact cnt = new contact();
            cnt.LastName = 'test SOQL';
            if(i < 100){
                cnt.AccountId = a.Id;
            } else if (i < 200){
                cnt.AccountId = a1.id;
            } else {
                cnt.accountid = a2.id;
            }
            listContact.add(cnt);
        }
        insert listContact;

        List<Opportunity> listOpp = new List<Opportunity>();
         for (Integer i = 0; i < 300; i++) {
             Opportunity op = new Opportunity();
             op.Name = 'Test opp ' + i;
             op.StageName = 'Closed Won';
             op.CloseDate = date.today();
             if (i < 100) {
                 op.AccountId = a.id;
             } else if (i < 200) {
                op.AccountId = a1.id;
            } else {
                op.AccountId = a2.id;
            }
            listOpp.add(op);
         }
         insert listOpp;
    }
  
  @isTest
    private static void testChildToParent() {
       
        test.startTest();
        soqlDemo3.childToParent_Soql1();
        test.stopTest();
   }
   @isTest
   private static void testMethod2(){
    //test.startTest();
    soqlDemo3.sampleSoql4();

   }
}