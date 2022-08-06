trigger contactInsertFirs_assg on Contact (before insert,after insert) {
if (trigger.isInsert&&trigger.isBefore) {
    List<Contact> Abc= trigger.new;
    for (contact newList : Abc) {
        if (newList.Name==null) {
            System.debug('Bu record\'da First Name yazilmadi. Name sadece Last Name den oluşuyor.');
        }
    }
}
}