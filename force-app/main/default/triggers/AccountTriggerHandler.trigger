trigger AccountTriggerHandler on Account (before insert, before update, after insert, after update) {
  

    system.debug('====Trigger START====');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    system.debug('====Trigger END====');
}
   
/*trigger AccountTriggernew on Account (before insert,after insert, before update, after update) {
    System.debug('------trigger start here---------');
    if (trigger.isBefore) {
        for (account eachAcc : trigger.new) {
            Boolean updateDesc=false;
            if (trigger.isInsert&& eachAcc.Active__c == 'Yes') {
               updateDesc=true;
            }
            if (trigger.isUpdate) {
                if (eachAcc.Active__c=='Yes'&& trigger.oldMap.get(eachAcc.Id).Active__c !=
                trigger.newMap.get(eachAcc.Id).Active__c) {
                    updateDesc=true;
                 
                }
            }
            if (updateDesc) {
                eachAcc.Description='Account is now active. Enjoy!';
            }
        }
    }
System.debug('=====Trgigger end here');
}*/
/*
map<id, account> triggerOldMap = trigger.oldMap;
Account oldAccount = triggerOldMap.get(eachAcc.Id);
Account newAccount = eachAcc;*/