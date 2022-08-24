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
                string customErrorMessage= System.label.Contact_Validation2;
                eachContact.LeadSource.addError(customErrorMessage);
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
   public static void contactUpdate(List<Contact> cntTriggerNew,
                                    Map<Id,Contact> cntTriggerNewMap,
                                    List<Contact> cntTriggerOld,
                                    map<id, contact> cntTriggerOldMap) {
        Set<Id> AccId= new set<id>();
       for (contact eachCon : cntTriggerNew) {
        AccId.add(eachCon.AccountId);        
       } 
       List<Account> Acclist=[select id,Phone, (select AccountId,id, otherPhone from Contacts) from account where id in :AccId];
       for (Account eachAcc : Acclist) {
            for (contact eachCn : cntTriggerNew) {
                eachCn.OtherPhone=eachAcc.Phone;

            }
       }
       if (!Acclist.isEmpty()) {
            update Acclist;
       }                          
   }
   public static void UpdateAccount(list <Contact> ccTriggerNew,
                                    list <contact> ccTriggerOld,
                                    map <id,Contact> ccTriggerNewMap,
                                    map <id,Contact> ccTriggerOldMap) {
    set <id> contIds = new set<id> ();
    for (contact eachCont : ccTriggerNew) {
        if(eachCont.main_contact_person__c!=ccTriggerOldMap.get(eachCont.id).main_contact_person__c){
            contIds.add(eachCont.AccountId);
        }
        system.debug(contIds);
    }   

    updateAccountFax(contIds);
    }  
    //pass accIds and contactIds
    public static void updateAccountFax(set <id> contIdsAcc) {
        List<Account> listOfAcc = [select id,fax, (select fax from Contacts where main_contact_person__c = true order by LastModifiedDate desc LIMIT 1)from Account where id in : contIdsAcc];
        system.debug(listOfAcc);
        for (Account eachAcc : listOfAcc) {
            eachAcc.Fax = eachAcc.Contacts[0].Fax;
            
        }
        if(!listOfAcc.isEmpty()){
        update listOfAcc;
            
        }                       
   }
}
