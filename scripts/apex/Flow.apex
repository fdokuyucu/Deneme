//invoke a flow
Account acc= [select id, name, OwnerId, CreatedBy.name from account where id='0018Z00002kiTfTQAU' limit 1];
Map<String,Object> inputs =new Map<String,Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountName', acc.Name);
inputs.put('AccountOwnerId', acc.OwnerId);
inputs.put('CreatedByName', acc.CreatedBy.Name);
flow.Interview flow = new flow.Interview.Account_Auto_Launched_Flow(inputs);
flow.start();