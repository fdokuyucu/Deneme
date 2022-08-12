trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (trigger.isBefore&&trigger.isUpdate) {
        AccountTriggerHandler.ValidateAnnualRevenue(trigger.new, trigger.old, trigger.newMap,trigger.oldMap );
    }
    if (trigger.isAfter&&trigger.isUpdate) {
        AccountTriggerHandler.updateVIPForAllContacts(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
    }
  

    // system.debug('====Trigger START====');
    // if (trigger.isBefore) {
    //     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    
    // system.debug('====Trigger END====');
        
     



/*
trigger OppTrigger on Opportunity (after Insert, before insert, after update, before update) {
    //Insert Operation - Assume I am inserting 5 record
        //Before Context (Save Operation not yet happened)
            //Trigger.new? --> Yes, it will be populated but no Id field populated
            //Trigger.Old? --> null, Creating brand new record and its doesnot have any prior version

            //Trigger.NewMap --> null
            //Trigger.OldMap --> null
        
        //After Context
            //Trigger.new? --> Yes, Have the Id field as well
            //Trigger.Old? --> null, Creating brand new record and its doesnot have any prior version

            //Trigger.NewMap --> Yes
            //Trigger.OldMap --> null, Creating brand new record and its doesnot have any prior version

    //Update Operation - Assume I am Updating 5 record
        //Before Context (Save Operation not yet happened)
            //Trigger.new? --> Populated with everything and have Ids as well
            //Trigger.Old? --> (Older Version) Populated with everything and have Ids as well but the values will not be updated one

            //Trigger.NewMap --> Populated with everything
            //Trigger.OldMap --> (Older Version records)Populated with everything
        
        //After Context
            //Trigger.new? --> Populated with everything and have Ids as well
            //Trigger.Old? --> (Older Version) Populated with everything and have Ids as well but the values will not be updated one

            //Trigger.NewMap --> Populated with everything
            //Trigger.OldMap --> (Older Version records)Populated with everything


//Q1. On which Object the operation is happening? (Write Trigger on this Object)
//Q2. Does it includes updating the same record or validating the same record? (If,Yes) the go for before triggers
//Q3. For which DML we have to consider the scenario?


    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            System.debug('Trigger.new from Before Context   '+Trigger.New);
            List<Opportunity> oppNewList = Trigger.new;
            Map<Id, Opportunity> oppNewMap = Trigger.newMap;
            List<Opportunity> oppoldList = Trigger.Old;
            Map<Id, Opportunity> oppOldMap = Trigger.OldMap;
            //If the amount field is updated then i need to update the description field as "Amount Updated"
            //amount field is updated and reduced from the prior description ==> "Amount value is reduced"
            //amount field is updated and increased from prior value description ==> "Amount value is Increased"
            for(Opportunity oppNewRecord : oppNewList){
                decimal newAmountValue = oppNewRecord.Amount;
                Opportunity oppOldRecord = Trigger.OldMap.get(oppNewRecord.Id);
                decimal oldAmountValue = oppOldRecord.Amount;
                if(newAmountValue < oldAmountValue){
                    oppNewRecord.Description = 'Amount value is reduced';
                } else if(newAmountValue > oldAmountValue){
                    oppNewRecord.Description = 'Amount value is Increased';
                }
            }
        }
    }
}

if(trigger.isAfter && trigger.isUpdate){
        integer countWebSiteUpdate = 0;

        map<id, account> trgOldMap = trigger.oldMap;
        map<id, account> trgNewMap = trigger.newMap;

        set<id> accIdSet = trgNewMap.keySet();

        for(Id eachId: accIdSet){
            account newAcc = trgnewmap.get(eachId);
            string newWebSite = newAcc.Website;

            account oldAcc = trgOldmap.get(eachId);
            string oldWebSite = oldAcc.Website;
            //to check if website field is changed, do the following
            if(newWebSite != oldWebSite){
                system.debug('Acc Name : ' + newAcc.Name + ', website is changed TO ===>>> ' + newWebsite);
                countWebSiteUpdate++;
            }
        }
        system.debug('count of website updated accounts => ' + countwebsiteupdate);
    }

*/







 /*if(trigger.isBefore && trigger.isInsert){
        system.debug('====BEFORE INSERT====');
        system.debug('Old Map ==> ' + trgOldMap); //null => because NO OLD.
        system.debug('New Map ==> ' + trgNewMap); //null => Key is ID and NO ID, so newMap is NULL. 
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('====AFTER INSERT====');
        system.debug('Old Map ==> ' + trgOldMap); //null => because NO OLD.
        system.debug('New Map ==> ' + trgNewMap); //YES
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('====BEFORE UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap); //YES
        system.debug('New Map ==> ' + trgNewMap); //YES
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('====AFTER UPDATE====');
        system.debug('Old Map ==> ' + trgOldMap); //YES
        system.debug('New Map ==> ' + trgNewMap); //YES
    } */
    /*

     if (trigger.isAfter && trigger.isUpdate) {
        List<account> oldAccounts = trigger.old;
        List<account> newAccoutns = trigger.new;
        // //OLD FOR EACH LOOP
        // for(Account oldAcc: oldAccounts){
        //     system.debug('Old account id: ' + oldAcc.id + ', Old account name ' + oldAcc.Name);
        // }
        //NEW FOR EACH LOOP
        set<id> accIdSet = new set<id>();
        for(Account newAcc: newAccoutns){
            system.debug('New account id: ' + newAcc.id + ', new account name ' + newAcc.Name);
            accidset.add(newacc.Id);
        }
        system.debug('acc id set ==> ' + accIdSet);
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.old = ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.old = ' + trigger.old);
    }

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger trigger.new = ' + trigger.new);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger trigger.new = ' + trigger.new);
    }*/
   

    /*List<account> newAccounts = trigger.new; //is LIST<sObject>
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after trigger trigger.new = ' + newAccounts);
        system.debug('size of trigger.new = ' + newAccounts.size());

        for (account eachAcc : newAccounts) {
            system.debug('account id is ' + eachacc.id + ', each account name is ' + eachAcc.name);
        }

    } */
    
    /*
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //INSERT
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('After Insert trigger called.');
    }
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('Before Insert trigger called.');
    }

    //UPDATE
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After Update trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('Before Update trigger called.');
    }
    
    
    */
    /*
    //this should print only in BEFORE.
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER.
        system.debug('After INSERT trigger called');
    }

    */
}