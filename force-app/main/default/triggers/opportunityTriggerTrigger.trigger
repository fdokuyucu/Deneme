trigger opportunityTriggerTrigger on Opportunity (before insert,after insert,before update, after update, before delete, after delete,  after undelete) {
    // if (trigger.isBefore&&trigger.isUpdate) {
    //     for (opportunity eachopp : trigger.new) {
    //         System.debug('new name'+ eachopp.Name);
    //         System.debug('new amount '+ eachopp.Amount);
    //         System.debug(trigger.oldMap.get(eachopp.Id).Name);
    //         System.debug(trigger.oldMap.get(eachopp.Id).Amount);
    //         if (eachopp.StageName != trigger.oldMap.get(eachopp.Id).StageName) {
    //             System.debug(eachopp.Description+' '+eachopp.Name);
    //         }
    //     }
        
    // }
    Set<Id> setIds =new Set<Id>();   
    if(trigger.isAfter){
        
        if(trigger.isUpdate){
        
        
        for(Opportunity eachOpp : trigger.new){
            if(eachOpp.Amount!=trigger.oldMap.get(eachOpp.Id).Amount||eachOpp.StageName!=trigger.oldMap.get(eachOpp.Id).StageName || eachOpp.AccountId!=trigger.oldMap.get(eachOpp.Id).AccountId){
                SetIds.add(eachOpp.AccountId);
            }
        }        
    }
        if(trigger.isInsert){
            for(Opportunity eachOpp : trigger.new){
                setIds.add(eachOpp.AccountId);
            }
        }
        if(trigger.isUndelete){
            for(Opportunity eachOpp : trigger.old){                                                                    
                setIds.add(eachOpp.AccountId);
            }
        }
    }
    // if(trigger.isDelete&&trigger.isBefore){
    //     for(Opportunity eachOpp: trigger.old){
    //         setIds.add(eachOpp.AccountId);
    //     }
    // }
    if(!setIds.isEmpty()){
        //call it when NOT already CALLED>
        if(OpportunityTriggerHandler.futureCalled == false){
             OpportunityTriggerHandler.opportunityUpdateWithAccount(setIds);
            OpportunityTriggerHandler.opportunityUpdateWithAccount2(setIds);
            OpportunityTriggerHandler.opportunityUpdateWithAccount3(setIds);
    }
    }

}