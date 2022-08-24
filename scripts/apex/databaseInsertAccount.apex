List<Account> listAcc= new List<Account>();
    Account a2 = new Account();
                a2.Name='PI Test';
                a2.Industry='Banking';
                a2.Type='Customer - Direct';
             
                listAcc.add(a2);
    Account a4 = new Account();
                a4.Name='PI Test';
                a4.Industry='Banking';
                a4.Type='Customer - Direct';
                listAcc.add(a4);

    account a3x = new account();
                listAcc.add(a3x);
    account a3y = new account();
                listAcc.add(a3y);

    LIST<Database.SaveResult> results= Database.insert(listAcc,false);
    System.debug('****result is ' +results);

    for(Database.SaveResult eachResult: results){
        if( eachResult.isSuccess()){
            System.debug('account inserted good guys'+ eachResult.getId());
        }else{
            System.debug('errors'+ eachResult.getErrors());
        }
    }
        

/*Database.SaveResult[getErrors=();getId=0018Z00002gFw4LQAS;isSuccess=true;],
 Database.SaveResult[getErrors=();getId=0018Z00002gFw4MQAS;isSuccess=true;], 
 Database.SaveResult[getErrors=(Database.Error[getFields=(Name);getMessage=Required fields are missing: [Name];getStatusCode=REQUIRED_FIELD_MISSING;]);getId=null;isSuccess=false;], 
 Database.SaveResult[getErrors=(Database.Error[getFields=(Name);getMessage=Required fields are missing: [Name];getStatusCode=REQUIRED_FIELD_MISSING;]);getId=null;isSuccess=false;]*/
