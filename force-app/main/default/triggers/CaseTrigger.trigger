trigger CaseTrigger on Case (before insert, after insert, before update, 
after update, before delete, after delete) {
    // if (trigger.isBefore) {
    //     if (trigger.isInsert) {
    //         System.debug('Insert Before');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('update before');
    //     }
    //     if (trigger.isDelete) {
    //         System.debug('delete before');
    //     }
    // }
    // if (trigger.isAfter) {
    //     if (trigger.isInsert) {
    //         System.debug('Insert After');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('update after');
    //     }
    //     if (trigger.isDelete) {
    //         System.debug('delete after');
    //     }
    // }
    if (trigger.isBefore&& trigger.isUpdate) {
        CaseTriggerHandler.CaseUpdate(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
        
    }
    if (trigger.isBefore&&trigger.isInsert) {
        CaseTriggerHandler.CaseInsert(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
    }
    if(trigger.isAfter&&trigger.isInsert){
        CaseTriggerHandler.createChildCase(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
    }
} 