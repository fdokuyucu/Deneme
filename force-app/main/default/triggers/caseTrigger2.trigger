trigger caseTrigger2 on case (before insert,before update) {
    
    if (trigger.isInsert) {
        System.debug('before insert case trigger called');
        System.debug('trigger size is====>>'+ trigger.size);
    }
    if (trigger.isUpdate) {
        System.debug('before update  case trigger called');
        System.debug('trigger size is====>>'+ trigger.size);
        CaseTriggerHandler2.countRecordsUpdated += trigger.size;
        CaseTriggerHandler2.countTriggerExecution++;
        System.debug('# of times trigger executed = ' +CaseTriggerHandler2.countTriggerExecution );
        System.debug('# of total records updated -= '+   CaseTriggerHandler2.countRecordsUpdated);
        
    }
   


}