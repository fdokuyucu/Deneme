public with sharing class SalesForceProjectTriggerHandler {
   public static void createDefaultSalesForceTcisket(List<Salesforce_Project__c> spTriggerNew) {
    List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();

    for (Salesforce_Project__c eachSP : spTriggerNew) {
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c= 'Default ST';
        st.Salesforce_Project__c= eachSP.Id; //bu satirda relationship kurduk. child ile parent arasinda relationship kurmak istiyrsan childin idsini parentdan alman lazim
        newSTList.add(st);        
    }
    if (!newSTList.isEmpty()) {
        insert newSTList;
    }
    
   }
}
