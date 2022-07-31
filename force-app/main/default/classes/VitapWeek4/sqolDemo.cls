public  class sqolDemo {
    public static void accountSOQL_1() {
      List<Account> listacc= [select id, name, active__c from Account WHERE name like '%A%'];  
        System.debug('listacc =' + listacc);
        System.debug('size of listAcc is = '+ listacc.size());

        Account acc= [select id, name FROM Account ORDER BY CreatedDate desc LIMIT 1];
        System.debug(acc);
    }
    public static void accountSOQL_2() {
        Account acc=[select  name, createddate, phone, accountNumber FROM account ORDER BY createddate DESC limit 1];
        System.debug('last create by '+ acc);

        String AccountName=acc.Name;
        String accountPhone = acc.Phone;
        System.debug('account name is '+ AccountName + ',phone is '+ accountPhone);
        System.debug('account number is '+ acc.AccountNumber);
    }
    public static void accountSOQL_3() {
        List<Account> listacc= [select name,phone, accountNumber from account ORDER BY CreatedDate DESC];
        for (Account eachAccount : listacc) {
            String AccountName=eachAccount.Name;
        String accountPhone = eachAccount.Phone;
        System.debug('account name is '+ AccountName + ',phone is '+ accountPhone);
        System.debug('account number is '+ eachAccount.AccountNumber);
        }
    }
    public static void accountSOQL_Filter(string accNameFilter) {
        List<Account> listacc=[select name, phone from account WHERE name =: accNameFilter];
        System.debug('filtered account are ' + listacc);
    }
}
