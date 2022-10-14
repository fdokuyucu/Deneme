
public with sharing class AccountInvocable {
    @invocableMethod(Label='Close Related Opportunities' 
                    description='Closes all the related opportunities of the given accounts'
                    category='Account')
    public  static void closeOpportunities(List<Id> accountIds) {
      //1 get all the related opp 
     
      
      List<Opportunity> opps=[Select id, StageName 
                                from Opportunity 
                                where AccountId in : accountIds 
                                and StageName not in ('Closed Won','Closed lost')
                                with SECURITY_ENFORCED];
         //2 iterate over the records and populate stage name
        for (opportunity opp : opps) {
            opp.StageName='Closed Lost';
        }  
         //3 update   
        try {
            update opps;
        } catch (Exception exc) {
            System.debug(exc.getMessage());
        }                       
    }
}
