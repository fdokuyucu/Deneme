trigger AccountTrigger on Account (before insert, before update, after insert,after update) {
    System.debug('====Trigger is start here=====');
    List<Account> newAcc=trigger.new;

    if (trigger.isAfter && trigger.isInsert) {
        System.debug('after trigger trigger.new is ='+ newAcc);
        System.debug('size of trigger.new '+ newAcc.size());

        for (account eachacc : newAcc) {
            System.debug('account id '+ eachacc.Id + 'each account name is '+ eachacc.Name);
        }
    }

    System.debug('-----trigger end here----');
/*
    if (trigger.isInsert&&trigger.isBefore) {
        System.debug('Before insert trigger Called');
    }
  
    if (trigger.isInsert&&trigger.isAfter) {
        System.debug('after insert trigger Called');
    }
    if (trigger.isBefore&&trigger.isUpdate) {
        System.debug('Before update');
    }
    if (trigger.isAfter&&trigger.isUpdate) {
        System.debug('after Update');
    }
    // this should be printed only updates
   
    

    */
//    if (trigger.isBefore) {
//     System.debug('Before INSERT trigger called');
//    }
//    if (trigger.isAfter) {
//     System.debug('After INSERT trigger called ');
//    }
  
  
}