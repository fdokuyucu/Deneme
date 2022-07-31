public  class dmlDemo {
   public static void dmlInsertDemo_stndObj() {
    Account acc = new Account();
    acc.Name='SoftInovas';
    
    insert acc;
    System.debug(acc);
   }
   public static void dmlInsertDemo_cstobj() {
    salesforce_project__c sp= new salesforce_project__c();
    sp.project_name__c = 'Teach DML to falcons';
    sp.description__c = 'All 40% are graet learners';
    insert sp;
    System.debug(sp);
   }
   public static void dmlUpdateDemo_3() {
      Account acc= [select id, name,Site from Account WHERE Name= 'SoftInovas' Limit 1];
      acc.Name='SoftInovas Inc';
      acc.Site = 'wwww.softinnovas.com';
      update acc;
      System.debug('acc= '+ acc);
   }
   
   

}
