@isTest
public  class SPTriggerHandlerTest {
    @isTest
    public static void testMethod1(){
        Salesforce_project__c sp= new Salesforce_project__c();
          sp.project_name__c = 'Teach DML to falcons';
         sp.description__c = 'All 40% are graet learners';

         test.startTest() ;
         insert sp;
         test.stopTest();

         List<Salesforce_Project__c> listSp=[select id, Description__c from Salesforce_Project__c];
         System.assert(listsp[0].Description__c.containsIgnoreCase('future')); 
    
    }
}
