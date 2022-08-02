DmlDemo3.dmlMultipleRecordUpdate_right();

//List<Account> delete Accounts [select id from account where name like '%Soft%'];
delete [select id from account where name like '%Soft%'];
delete [select id from account where name like '%bulk%' limit 3];