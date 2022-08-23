
public class OpportunityTriggerHandler {
    public static boolean futureCalled = false;//when it is false -> FUTURE did not execute.
    @future
    public static void opportunityUpdateWithAccount(Set<Id> setIds){
        futureCalled = true;
        list<Account> ListAcc= [select id, Name,Highest_Amount_Opportunity_Name__c,(select name,amount from Opportunities ORDER BY Amount DESC) from Account where id IN : setIds];
        for(Account eachAcc : ListAcc){
            eachAcc.Highest_Amount_Opportunity_Name__c= eachAcc.Opportunities[0].Name;
        }
        if(!ListAcc.isEmpty()){
            update ListAcc;
        }
      
    }
    @future
    public static void opportunityUpdateWithAccount2(Set<Id> setIds){
        futureCalled = true;
        list<Account> ListAcc= [select id, Name,Target_Amount__c,Target_Amount_Achieved_Opportunity_Name__c,(select name,amount from Opportunities where stageName ='Closed Won' ORDER BY Amount DESC) from Account where id IN : setIds];
        for(Account eachAcc : ListAcc){
            if(eachAcc.Opportunities[0].amount>eachAcc.Target_Amount__c){
                eachAcc.Target_Amount_Achieved_Opportunity_Name__c=eachAcc.Opportunities[0].Name;
            }
            
        }
        if(!ListAcc.isEmpty()){
            update ListAcc;
        }
    }
    @future
    public static void opportunityUpdateWithAccount3(Set<Id> setIds){
        futureCalled = true;
        decimal sum = 0;
        list<Account> ListAcc= [select id, Name,Total_Amount_Generated__c,(select name,amount from Opportunities where stageName ='Closed Won' ORDER BY Amount DESC) from Account where id IN : setIds];
        for(Account eachAcc : ListAcc){
            eachAcc.Highest_Amount_Opportunity_Name__c= eachAcc.Opportunities[0].Name;
            for(Opportunity eachOpp : eachAcc.Opportunities){
                sum += eachOpp.Amount;
            }
            eachAcc.Total_Amount_Generated__c= sum;
        }
        if(!ListAcc.isEmpty()){
            update ListAcc;
        }
}
}

//,Target_Amount_Achieved_Opportunity_Name__c,
