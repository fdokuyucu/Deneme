trigger contactTrigger on Contact (before insert, before update, after insert,after update,after delete, after undelete) {

    if (trigger.isBefore&&trigger.isUpdate) {
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.NewMap, Trigger.Old, Trigger.OldMap);
    }
    if (trigger.isAfter) {
        set<id> accountIds = new Set<Id>();

        if (trigger.isInsert||trigger.isUpdate||trigger.isUndelete) {
            for (contact eachContact : trigger.new) {
                if (eachContact.AccountId!=null) {
                    AccountIds.add(eachcontact.AccountId);
                }
            }
        }
        if (trigger.isUpdate||trigger.isDelete) {
            for (contact eachContact : trigger.old) {
                if (eachContact.AccountId!=null) {
                    AccountIds.add(eachcontact.AccountId);
                }
            }
        }
        ContactTriggerHandler.updateAccountRollUpField(accountIds);
     
    }
    if (trigger.isBefore&&trigger.isInsert) {
        ContactTriggerHandler.contactUpdate(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
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