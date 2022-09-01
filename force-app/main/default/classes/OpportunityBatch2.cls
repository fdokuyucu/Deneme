public  class OpportunityBatch2 implements Database.Batchable<SObject>, Database.stateful{
    integer count=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = database.getQueryLocator([select Id, OwnerId, CloseDate from Opportunity Where stageName = 'Prospecting']);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        if(!scope.isEmpty()){
            delete scope;
            count =scope.size()+ count;
        }
    }
    public void finish(Database.BatchableContext bc){        
       System.debug('Total number of deleted record '+count); 
    }
}
