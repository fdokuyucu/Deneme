trigger opportunityTriggerTrigger on Opportunity (before insert,after insert,before update, after update) {
    if (trigger.isBefore&&trigger.isUpdate) {
        for (opportunity eachopp : trigger.new) {
            System.debug('new name'+ eachopp.Name);
            System.debug('new amount '+ eachopp.Amount);
            System.debug(trigger.oldMap.get(eachopp.Id).Name);
            System.debug(trigger.oldMap.get(eachopp.Id).Amount);
            if (eachopp.StageName != trigger.oldMap.get(eachopp.Id).StageName) {
                System.debug(eachopp.Description+' '+eachopp.Name);
            }
        }
        
    }

}