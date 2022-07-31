public  class SOQLAssignment {
    public static void soql_WhereClause() {
        List<Contact> lstContact= [select lastName from contact where lastName LIKE '%A%'];
        System.debug(lstContact);
        System.debug(lstContact.size());
    }
    public static void soql_formethod() {
        List<Contact> lstcontact = [select lastName, Phone from contact ];
        for (contact eachContact : lstcontact) {
            String cntLastName = eachContact.LastName;
            String cntPhone= eachContact.Phone;
            System.debug(' contact last name is : ' + cntLastName+ ' phone number is : '+ cntPhone);
        }
    }
}