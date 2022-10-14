@isTest
public with sharing class SoapCalloutTest {
    @isTest
    private static void ParksServiceTest(){
        ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);
        string country = 'Germany';
        string[] parks= SoapCallouts.getParksByCountry(country);
        system.assert(parks.size() !=0);
    }
    @isTest
    private static void getSumTest(){
        CalcServicesDoAddMock mock = new CalcServicesDoAddMock ();
        Test.setMock(WebServiceMock.class, mock);
        Double output=SoapCallouts.getSum(5, 5);
        system.assertEquals(output, 10);
        
    }

}
