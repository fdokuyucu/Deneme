list<account> accounts = [select id, name from account];
AccountQueueableExample aq = new AccountQueueableExample(accounts);
ID jobId = system.enqueueJob(aq);
system.debug('job id is ..... ' + jobId);
