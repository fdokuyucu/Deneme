public with sharing class DeleteContactBatch implements Database.Batchable<SObject>, Database.stateful{
    integer count=0;
    public Database.QueryLocator start (Database.BatchableContext bc){
        Database.QueryLocator q1= Database.getQueryLocator([select id, name from Contact where CreatedDate> LAST_N_DAYS:10]);
        return q1;
        
    }
    public void execute (Database.BatchableContext bc , List<Contact> scope){
        List<Contact> listCont= new List<Contact>();
        for (contact eachCont : scope) {
            listCont.add(eachCont);
        }
        delete listCont;

    }
    public void finish (Database.BatchableContext bc){
        return;
    }
}
