public with sharing class AccountBatch implements Database.Batchable<SObject>, Database.stateful{

    integer updateCount =0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('-------Start Here');
        Database.QueryLocator q1= Database.getQueryLocator([select id, description,Active__c from account]);
       return q1;

    }

    public void execute(Database.BatchableContext bc, List<Account> scope){
       
        System.debug('_________inside the EXETUTE_______');
        System.debug('batch size is ---->'+ scope.size());
        System.debug('updated count is'+ updateCount);

        List<Account> updateAccounts = new List<Account>();
        for(account acc : scope){
            if(acc.Active__c!= 'No'){
                acc.Description +='...updated via Batch.';
                updateAccounts.add(acc);
                updateCount ++;
            }
        }
        update updateAccounts;

    }

    public void finish(Database.BatchableContext bc){
        System.debug('_____FINISH______');
        System.debug('batch is now Complete. All Chunks are executed');
        
    }
}
