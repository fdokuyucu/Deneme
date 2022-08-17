trigger salesforceproject on Salesforce_Project__c (before insert, after insert, after update, before update) {
    
    if (trigger.isAfter&& trigger.isInsert) {
        Map<Id,Salesforce_Project__c> spNewMap= trigger.newMap;
        Set<Id> setSpid=spNewMap.keySet();

        SalesForceProjectTriggerHandler.updateProjectDescription(setSPid);
        SalesForceProjectTriggerHandler.createDefaultSalesForceTcisket(Trigger.New);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }


}