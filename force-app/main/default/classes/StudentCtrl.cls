public with sharing class StudentCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Student__c> SearchStudentsByPostalCode(String postalCode){
        postalCode= '%'+ postalCode +'%';
        return [SELECT Student_Name__c,Number__c, Mobile__c,Email__c,Postal_Code__c 
                FROM Student__c 
                WHERE Postal_Code__c LIKE : postalCode
                WITH SECURITY_ENFORCED];
    }
}
