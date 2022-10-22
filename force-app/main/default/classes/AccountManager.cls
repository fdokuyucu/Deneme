@RestResource(urlMapping='/Account/*')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount(){
        //https://yildizkent-dev-ed.my.salesforce.com/services/apexrest/Account/0018Z00002ezgksQAA
        RestRequest Request= RestContext.Request;
        String RequestUrl = Request.requestURI;
        integer lastIndex= RequestUrl.lastIndexOf('/');
        id AccountId= RequestUrl.substring(lastIndex+1);
        Account acc = [select Name, Industry, Type, Description from Account where id = : AccountId limit 1];
        return acc;
    }
    @HttpPost
    global static id createAccount(string name, string industry, string type, string description, string status){
        Account acc= new Account();
        acc.Name= name;
        acc.Industry= industry;
        acc.Type= type;
        acc.Description= description;
        acc.Status__c= status;
        insert acc;
        return acc.id;
    }
    @HttpDelete
    global static string deleteAccount(){
        RestRequest Request= RestContext.Request;
        String RequestUrl = Request.requestURI;
        integer lastIndex= RequestUrl.lastIndexOf('/');
        id AccountId= RequestUrl.substring(lastIndex+1);
        Account acc=[select id from account where id=: AccountId];
        delete acc;
        return 'Account has been deleted succesfully';
    }
}
