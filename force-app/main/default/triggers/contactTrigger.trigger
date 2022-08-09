trigger contactTrigger on Contact (before insert, before update, after insert,after update) {

    if (trigger.isBefore&&trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }


    // if (trigger.isBefore) {
    //     System.debug('Before Trigger');
    //     if (trigger.isInsert) {
    //         System.debug('Before Insert Trigger');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('Before Update Trigger');
    //     }
    // }
    // if (trigger.isAfter) {
    //     System.debug('After Trigger');
    //     if (trigger.isInsert) {
    //         System.debug('After Insert Trigger');
    //    }
    //     if (trigger.isUpdate) {
    //         System.debug('Afetr Update Trigger');
    //     }
    // }
}