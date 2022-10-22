@istest
public with sharing class CaseManagerTest {
    @TestSetup    
   static void makedata(){
        Account acc = new Account(Name='Test Account');
        insert acc;
        Contact con= new Contact(FirstName='Integration',LastName='Test', Email='test@testtest.com');
        insert con;

        List<case> Cases= new List<Case>();
        for (Integer i = 0; i < 4; i++) {
            case cs =  new case();
            cs.AccountId= acc.id;
            cs.ContactId= con.Id;
            cs.Subject= 'Problem with the wi-fi routoir'+i;
            cs.Origin='Email';
            cs.Priority='Medium';
            Cases.add(cs);
        }
        insert Cases;
   }
   @istest
   private static void getCaseTest(){
        Test.startTest();
        Case cs = [select Id, CaseNumber, Subject, Description, Priority, Origin from Case Limit 1];
        string homeUrl = system.URL.getSalesforceBaseUrl().toExternalForm();// Base URL
        string uri= homeUrl +'/services/apexrest/Case/' +cs.Id;

        RestRequest request= new RestRequest();
        request.requestURI= uri;
        request.httpMethod= 'GET';
        RestContext.request= request;

        Case objCase= CaseManager.getCase();
        System.assert(objCase.id != null);
        system.assertEquals(objCase.Subject, cs.Subject);
        System.assertEquals(objCase.CaseNumber, cs.CaseNumber);
        test.stopTest();

   }
   @isTest
   private static void createCaseTest(){
    test.startTest();
    id caseid= CaseManager.createCase('test subject', 'high', 'web', 'test2');
    system.assert(caseid != null);
    test.stopTest();
   }
   @istest
   private static void deleteCaseTest(){
    test.startTest();
     //prepare request uri
     Case cs = [SELECT Id, CaseNumber, Subject, Description, Priority, Origin FROM Case LIMIT 1];
     String homeUrl = System.URL.getSalesforceBaseUrl().toExternalForm();
     String uri = homeUrl + '/services/apexrest/Case/' + cs.Id;
     
     //prepare RestRequest & Context
     RestRequest request = new RestRequest();
     request.requestURI = uri;
     request.httpMethod = 'DELETE';
     RestContext.request = request;
     
     //Test deleteCase method and perform asserts
     String actual = CaseManager.deleteCase();
     System.assertEquals('Case has been deleted successfully!', actual);
    test.stopTest();
   }
   @isTest
   private static void upsertCaseTest1(){
    id caseid= CaseManager.upsertCase(null, 'subject', 'high', 'web', 'description');
    System.assert(caseid != null);
   }
   @isTest
   private static void upsertCaseTest2(){
    Case cs = [SELECT Id, CaseNumber from Case limit 1];
    id caseid= CaseManager.upsertCase(cs.Id, 'subject', 'high', 'web', 'description');
    System.assertEquals(cs.Id,  caseid);

    }
    @isTest
    private static void updateCaseTest() {
        Test.startTest();
        //prepare json string and convert it into blob
        Case cs = [SELECT Id, Subject, Description, Reason FROM Case LIMIT 1];
        cs.Reason = 'Installation';
        String jsonString = JSON.serialize(cs);
        
        //prepare RestRequest and Context
        RestRequest request = new RestRequest();
        request.requestBody = Blob.valueOf(jsonString);
        request.httpMethod = 'PATCH';
        RestContext.request = request;
        
        //Test the method and perform asserts
        Case updatedCase = CaseManager.updateCase();
        System.assertEquals('Installation', updatedCase.Reason);
        test.stopTest();
    }
}