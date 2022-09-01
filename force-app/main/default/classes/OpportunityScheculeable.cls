public with sharing class OpportunityScheculeable implements Schedulable{
    public void execute(SchedulableContext sc){
        OpportunityBatch2 ob2= new OpportunityBatch2();
Database.executeBatch(ob2,10);

    }
}
