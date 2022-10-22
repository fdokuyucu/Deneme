@isTest
public with sharing class StudentCtrlTest {
    @TestSetup
    static void makeData(){
        List<Student__c> sts= new List<Student__c>();
        
        for (Integer i = 0; i < 29; i++) {
            Student__c st= new Student__c();
            st.Student_Name__c='Student'+i;
            st.Number__c=8;
            st.Postal_Code__c='123456';
            sts.add(st);
        }
        insert sts;

    }

    @isTest
    public static void SearchStudentsByPostalCodeTest() {
        Test.startTest();
       List<Student__c> pc=StudentCtrl.SearchStudentsByPostalCode('123');
        System.assert(pc.size()>0);
        Test.stopTest();
    }    
}
