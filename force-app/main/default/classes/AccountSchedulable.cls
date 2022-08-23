public with sharing class AccountSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        AccountBatch ab= new AccountBatch();
        integer numberOfRecords = 20;
        //1 way
        ID batchId = Database.executeBatch(ab, numberOfRecords);
        
    }
}
