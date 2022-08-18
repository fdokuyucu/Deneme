public with sharing class SalesForceProjectTriggerHandler {
   @future
   public static void updateProjectDescription(Set<Id> setSPids){
    List<Salesforce_Project__c> listSP = [select id, name, description__c from Salesforce_Project__c where id in :setSPIds];

        for (salesforce_project__c eachSP : listSP) {
            eachSP.Description__c = eachSP.Description__c + '. Updated from future';
        }
        update listSP;

   }


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

   public static void validateProjectCompletion(List<salesforce_project__c> spTriggerNew,
   Map<id, salesforce_project__c> spTriggerNewMap,
   Map<id, salesforce_project__c> spTriggerOldMap) {
       //find all the project which are completed
       set<id> setCompletedProjectIds = new set<id>();
       for (salesforce_project__c eachNewSP : spTriggerNew) {
           //check if project's status field is marked as completed.
           //how do we check that?
            //compare old status value and new status value.
            //if not same, then status field is CHANGED.
            salesforce_project__c oldSP = spTriggerOldMap.get(eachNewSP.id);
            if(oldSP.Status__c != eachNewSP.Status__c
                && eachNewSP.Status__c == 'Completed'){
                setCompletedProjectIds.add(eachNewSP.Id);
            }
       }
       //fetch all tickets of COMPLETED project.
       List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
        where Salesforce_Project__c in :setCompletedProjectIds and (status__c != 'Completed' and status__c != 'Cancelled')];

        //loop all tickets and if ticket is FOUND then fetch Project from NewMap to addError
        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            spNew.addError('Cannot COMPLETE Project. Please complete all its ticket then come back.');
        }
   }
}