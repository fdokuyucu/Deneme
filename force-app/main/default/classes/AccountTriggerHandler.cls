//public  class AccountTriggerHandler { 
//     public static void ValidateAnnualRevenue(List<Account> accTriggerNew,
//                                                 List<Account> accTriggerOld,
//                                                 Map<Id,Account> accTriggerNewMap,
//                                                 Map<Id,Account> accTriggerOldMap) {
//         if (accTriggerOldMap != null) {
//             for (account eachAcc : accTriggerNew) {
//                 if (eachAcc.AnnualRevenue< accTriggerOldMap.get(eachAcc.Id).AnnualRevenue || eachAcc.AnnualRevenue==null) {
//                     System.debug('annuelravee');
//                     eachAcc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
//                 }
//             }

//         }
    
//  }
//     public static void updateVIPForAllContacts(List<Account> accTriggerNew,
//                                                 List<Account> accTriggerOld,
//                                                 Map<Id,Account> accTriggerNewMap,
//                                                 Map<Id,Account> accTriggerOldMap) {
        

//         Set<Id> setAccId= new Set<Id>();
//         for (account eachAcc : accTriggerNew) {
//             if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c) {
//                 setAccId.add(eachAcc.id);
//             }
//         }

//         if (!setAccId.isEmpty()) {
                
//             List<Contact> listContacts =[SELECT id, Name, Account.id, VIP__c  FROM contact WHERE Account.id in:setAccId  ];   
            
//             for (contact eachContact : listContacts) {
//                 Account newAcoountRecord= accTriggerNewMap.get(eachContact.AccountId);
//                 Boolean accVIP= newAcoountRecord.VIP__c;
//                 eachContact.VIP__c=accVIP;
//             }
//             update listContacts;
//         }
// //     }
//     public static void createContact(List<Account> triggerNew, Map<Id,Account> triggerOldmap) {
//         List<Contact> Listcont=new List<Contact>();
//         for (account eachAcc : trigger.new) {
//             Contact c1= new Contact();
//             c1.LastName=eachAcc.Name;
//             c1.Phone=eachAcc.Phone;
//             c1.AccountId=eachAcc.id;
//             listcont.add(c1);
//         }
//         if (!listcont.isEmpty()) {
//             insert Listcont;
//         }
        
//     }
// }
public class AccountTriggerHandler {
    public static void CreateContact(List<Account> triggerNew, map<Id, Account> triggerOldMap) {
        List<Contact> listOfContact = new List<Contact>();
        for(Account acc : triggerNew){
            Contact eachContact = new Contact();
            eachContact.lastName = acc.Name;
            eachContact.Phone = acc.Phone;
            eachContact.AccountId = acc.Id;
            listOfContact.add(eachContact);
            
        }
        if (!listofContact.isEmpty()) {
            insert listOfContact;
        }
    }
    public static void AccountUpdate(list<account> accTriggerNew) {
                                    
        list<Opportunity> ListOpp=[select id, StageName from Opportunity where AccountId in: accTriggerNew];
        
        for (opportunity eachOpp : listOpp) {
            if (eachOpp.StageName!='Closed Won') {
                eachOpp.StageName='Closed Lost';
            }
        }
        update listOpp;      
    }
    public static void AccountContactUpdate(List<Account> accTriggerNew,
                                            List<Account> accTriggerOld,
                                            Map<Id,Account> accTriggerNewMap,
                                            Map<Id,Account> accTriggerOldMap) {
        Set<Id> Accids= new set<id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.Phone != accTriggerOldMap.get(eachAcc.Id).Phone) {
                Accids.add(eachAcc.Id);
            }
        }
        if (!Accids.isEmpty()) {           
          List<Contact> listOfContact =[select id,OtherPhone,AccountId,MobilePhone from Contact where AccountId in: Accids];
            for (contact eachCont : listOfContact) {
                eachCont.OtherPhone=accTriggerOldMap.get(eachCont.AccountId).Phone;
                eachCont.MobilePhone=accTriggerNewMap.get(eachCont.AccountId).Phone;
            }
            update listOfContact;   
        }
        
    }
}