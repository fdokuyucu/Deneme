public with sharing class DeleteContactBatchSchedulable implements Schedulable{
   public void execute(SchedulableContext sc){
    DeleteContactBatch delCnt = new DeleteContactBatch();
    Database.executeBatch(delCnt,10);
   }
}
