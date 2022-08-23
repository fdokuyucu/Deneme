public  class opportunutyBatchable implements Database.Batchable<SObject>, Database.stateful{
    integer count=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1= Database.getQueryLocator([select id,name,stageName from opportunity where LastModifiedDate < LAST_N_DAYS:7 and (stageName!='Closed Won' or stageName!='Closed Lost') ]);
        return q1;
    }

    public void execute(Database.BatchableContext bc, List<Opportunity> scope){        
        List<Task> listTa= new List<Task>();
        System.debug(scope);
        for(Opportunity eachOpp : scope){
            task t1 = new task();
            t1.Subject='Other';
            // if( eachOpp.CloseDate < date.today()){
            //     t1.ActivityDate=date.today();
            // }else{
            //     t1.ActivityDate=eachOpp.CloseDate.addDays(-2);
            // }
            // t1.Description='Reminder  Please take action on the Opportunity';
            // t1.WhatId=eachOpp.Id;
            t1.OwnerId=eachOpp.AccountId;
            t1.Status='In Progress';

            listTa.add(t1);
            System.debug(listTa);
            count++;
        }   
        if(!listTa.isEmpty()){
            insert listTa;
        }      

    }

    public void finish(Database.BatchableContext bc){        
       System.debug('bizim count---'+count); 
    }
}
