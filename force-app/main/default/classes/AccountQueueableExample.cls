public with sharing class AccountQueueableExample implements Queueable {
    List<account> listAcc = new list<account>();
    public AccountQueueableExample(List<account> accs) {
        listAcc = accs;
    }

    public void execute(QueueableContext qc){
        for (account acc : ListAcc) {
            acc.Name += '-- SI';
        }
        update listAcc;
    }

}