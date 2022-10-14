@istest
public with sharing class RestCalloutsTest {
    @istest
    private static void getAnimalsTest(){
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getAnimals();
        system.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }
    @isTest
    private static void getUsersTest() {
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getUsers();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }
    @istest
    private static void getRecipesTest(){
        RestCalloutMock mock= new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getRecipes();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }
    private static void getProductTest(){
        RestCalloutMock mock= new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getProduct();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }
}