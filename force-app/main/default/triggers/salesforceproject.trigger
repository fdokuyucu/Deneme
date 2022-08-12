trigger salesforceproject on Salesforce_Project__c (before insert, after insert, after update, before update) {
    
    if (trigger.isAfter&& trigger.isInsert) {
        SalesForceProjectTriggerHandler.createDefaultSalesForceTcisket(Trigger.New);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.validateProjectCompletion(Trigger.New, Trigger.NewMap, Trigger.OldMap);
    }

    
    
    
    //list<Salesforce_Project__c> newacc=trigger.new;
    // if (trigger.isInsert) {
    //     System.debug('after insert trigger trigger.new '+ trigger.new);
    // }
    // if (trigger.isUpdate) {
    //     System.debug('after update trigger trigger.new '+ trigger.new);
    // }

}