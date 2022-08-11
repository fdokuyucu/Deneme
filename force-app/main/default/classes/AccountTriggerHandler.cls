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
   
}
