public  class DmlDemo3 {
    public static void dmlMultipleRecordUpdate_right() {
      List<Account> listAccount= [select name from Account];

      List<Account> updateAccounts = new List<Account>();
      for (Account  eachAccount: ListAccount) {
        eachAccount.Name += 'Fatih 4.0';
        updateAccounts.add(eachAccount);
      }
      if (!updateAccounts.isEmpty()) {
        update updateAccounts;
      }else {
        System.debug('No Accounts to Update');
      }
    }
}
