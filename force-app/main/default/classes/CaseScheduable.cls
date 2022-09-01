public with sharing class CaseScheduable implements Schedulable{
    public void execute(SchedulableContext sc) {
        CaseBatch c2=new CaseBatch();
        Database.executeBatch(c2,20);

    }
}
