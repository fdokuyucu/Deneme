public class ContactTriggerHandler {
   public static void contactUpdateValidation1(List<Contact> cntTriggerNew,
                                                Map<Id,Contact> cntTriggerNewMap,
                                                List<Contact> cntTriggerOld,
                                                map<id, contact> cntTriggerOldMap) {

        for (contact eachContact : cntTriggerNew) {
            contact oldContact =cntTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update \'Partner Referral\' contacts');
            }
        }                                            
   }
   public static void contactUpdateValidation2(List<Contact> cntTriggerNew,
                                                 Map<Id,Contact> cntTriggerNewMap,
                                                 List<Contact> cntTriggerOld,
                                                 map<id, contact> cntTriggerOldMap) {
        
        for (Contact eachContact : cntTriggerNew) {
            contact oldContact= cntTriggerOldMap.get(eachContact.Id);
            if (eachContact.LeadSource != oldContact.LeadSource) {
                eachContact.LeadSource.addError('CAN NOT UPDATE LEADSOURCE. PLEASE');
            }
        }                                            
    
   }
}
