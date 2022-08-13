trigger customerTrigger on Customer__c (before insert, before update, after insert, after update) {
if (trigger.isAfter&&trigger.isInsert) {
    customerTriggerHandler.createPayment(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
}