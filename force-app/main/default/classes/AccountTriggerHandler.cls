public  class AccountTriggerHandler { 
    public static void ValidateAnnualRevenue(List<Account> accTriggerNew,
                                                List<Account> accTriggerOld,
                                                Map<Id,Account> accTriggerNewMap,
                                                Map<Id,Account> accTriggerOldMap) {
        if (accTriggerOldMap != null) {
            for (account eachAcc : accTriggerNew) {
                if (eachAcc.AnnualRevenue< accTriggerOldMap.get(eachAcc.Id).AnnualRevenue || eachAcc.AnnualRevenue==null) {
                    System.debug('annuelravee');
                    eachAcc.AnnualRevenue.addError('Annual Revenue for an account cannot be reduced');
                }
            }

        }
    
}
    public static void updateVIPForAllContacts(List<Account> accTriggerNew,
                                                List<Account> accTriggerOld,
                                                Map<Id,Account> accTriggerNewMap,
                                                Map<Id,Account> accTriggerOldMap) {
        

        Set<Id> setAccId= new Set<Id>();
        for (account eachAcc : accTriggerNew) {
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c) {
                setAccId.add(eachAcc.id);
            }
        }

        if (!setAccId.isEmpty()) {
                
            List<Contact> listContacts =[SELECT id, Name, Account.id, VIP__c  FROM contact WHERE Account.id in:setAccId  ];   
            
            for (contact eachContact : listContacts) {
                Account newAcoountRecord= accTriggerNewMap.get(eachContact.AccountId);
                Boolean accVIP= newAcoountRecord.VIP__c;
                eachContact.VIP__c=accVIP;
            }
            update listContacts;
        }
    }
}