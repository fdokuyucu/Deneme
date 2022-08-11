trigger LeadTrigger on Lead (before insert,after insert,before update, after update) {

    if (trigger.isBefore&&trigger.isInsert){
        for(lead eachLead: trigger.new){
           if (eachLead.LeadSource=='Web') {
            System.debug('Rating should be cold');
           } else {
            System.debug('Rating should be Hot');
           }
        }

    }

}