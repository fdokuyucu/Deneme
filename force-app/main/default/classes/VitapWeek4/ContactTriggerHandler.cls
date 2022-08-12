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
   public static void updateAccountRollUpField(set<id> accountIds) {

    List<Account> listAccounts= [select id, Number_of_Contacts__c, (select id from Contacts) from account where id in : accountIds];
    for (account eachAccount : listAccounts) {
        List<Contact> accContacts= eachAccount.Contacts;
        Integer noOfContacts= accContacts.size();
        eachAccount.Number_of_Contacts__c= noOfContacts;
    }
    update listAccounts;
   }
}
