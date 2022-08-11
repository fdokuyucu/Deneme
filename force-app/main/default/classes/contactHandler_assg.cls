public  class contactHandler_assg {
    public static void createcontact(LIST<Account> accTriggerNew, LIST< Account > accTriggerOld, MAP<ID, Account > accTriggerNewMap,MAP<ID, Account > accTriggerOldMap) {

        List<Contact> newContact = new List<Contact>();        
        for (Account eachAcc : accTriggerNew) {
           Contact newCnt= new contact();
            newCnt.LastName=eachAcc.name;
            newCnt.AccountId=eachAcc.id;
            newContact.add(newCnt);
        }
        if (!newContact.isEmpty()) {
            insert newContact;
        }
    }
}
