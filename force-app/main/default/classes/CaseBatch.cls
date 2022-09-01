public  class CaseBatch implements Database.Batchable<SObject>, Database.stateful{
    integer count=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1= Database.getQueryLocator([select id,Origin,OwnerId from case where LastModifiedDate < LAST_N_DAYS:5 and status!='Closed' ]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Case> scope){
        List<Task> TaskList= new List<Task>();
        for(Case cs: scope){
            task tk= new task();
            tk.Subject=System.label.Case_Subject;
            tk.Description=System.label.Case_Coment;
            tk.WhatId=cs.Id;
            tk.OwnerId=cs.OwnerId;
            tk.Status='In Progress';
            TaskList.add(tk);
            System.debug(TaskList);
            count++;
            
        }
        if(!TaskList.isEmpty()){
            insert TaskList;
        }

    }
    
    public void finish(Database.BatchableContext bc){        
       System.debug('bizim count---'+count); 
    }
}
