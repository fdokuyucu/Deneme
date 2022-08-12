public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(list<id> accId) {
        List<Account> listacc= [select id, website from Account where id in :accId];

        for (account eachAcc : listAcc) {
            eachAcc.Website='www.softinonovas.com';
        }
        update listacc;
    }   
}