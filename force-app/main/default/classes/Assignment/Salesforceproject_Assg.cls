public with sharing class Salesforceproject_Assg {
    public static void salesforceprojectInsert() {
        Salesforce_Project__c sf1= new Salesforce_Project__c();
        sf1.Project_Name__c='Test Task';
        insert sf1;
        System.debug('salesforce project insert '+ sf1);
        }
    public static void salesforceprojectUpdate() {
        Salesforce_Project__c sf2=[select Project_Name__c FROM Salesforce_Project__c where Project_Name__c ='Test Task'];
        sf2.Project_Name__c='Testing Task';
        update sf2;
        System.debug('salesforce project updated '+ sf2);
            }
}
