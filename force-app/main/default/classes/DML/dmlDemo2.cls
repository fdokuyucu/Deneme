public class dmlDemo2 {
    public static void dmlUpdateDemo_3() {
        //1. fetch record
        account acc = [select id, name, Site from account where name like 'Soft%' limit 1];
        //2. update account
        acc.Name = 'SoftInnovas Inc.';
        acc.site = 'www.softinnovas.com';
 
        //3. update DML
        update acc;
        system.debug('acc = ' + acc);
    }
 
    public static void dmlInsertRelatedDemo_1() {
        //1. fetch account record
        account acc = [select id, name from account where name = 'SoftInnovas Inc.' limit 1];
 
        //2. create contact's instance
        Contact c = new Contact();
        c.LastName = 'Biden';
        c.AccountId = acc.Id;
        insert c;
    }
    public static void dmlInsertRelatedDemo_2() {
        Salesforce_Project__c sp =[select id, name FROM Salesforce_Project__c ORDER BY CreatedDate DESC LIMIT 1];
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn DML in APEX';
        st.Priority__c= 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2021, 07  , 29);
        st.Salesforce_Project__c = sp.Id;
        insert st;
        System.debug('sales force ticket'+ st);
    }
    public static void dmlInsertMultipleRecord_right1() {
        List<Account> listacc= new List<Account>();
        Account a = new Account ();
        a.Name= 'bulk acc1';
        listacc.add(a);
        Account a1= new Account();
        a1.Name= 'bulk acc2';
        listacc.add(a1);
        Account a2= new Account();
        a2.Name= 'bulk acc3';
        listacc.add(a2);

        insert listacc;
    }
    public static void dmlInsertMultipleRecord_right2() {
        List<Account> listAccount = new List<Account>();

        for (Integer i = 0; i < 200; i++) {
            Account acc = new Account();
            acc.Name= 'Softinnovas 29 jul vIII'+ i;
            acc.AccountNumber = 'accis- ' +i;
            acc.Active__c= 'Yes';
            listAccount.add(acc);
          }
          System.debug('size of list = '+ listAccount.size());
          if (!listAccount.isEmpty()) {
            insert listAccount;
          }
    }
 }