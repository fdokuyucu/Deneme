///JSON///
//Account into JSON
{
    "Name" : "Universal Containers",
    "AnnualRevenue" : 2000000,
    "Industry" : "Biotechnology",
    "Type" : "New Customer"
}

//serialize method
Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE Name = 'United Oil & Gas Corp.' LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

Opportunity opp=[select name, amount from opportunity where amount>1000000 limit 1];
String jsonString= JSON.serialize(opp);
System.debug(jsonString);

lead ld= [select name,phone,email from lead where phone!=null and email!=null limit 1 ];
String js=JSON.serialize(ld);
System.debug(js);

List<Lead> leads = [SELECT FirstName, LastName, Email, Company, Title
                    FROM Lead
                    WHERE Email != null
                    AND Company != null];
String jsonString = JSON.serialize(leads);
System.debug(jsonString);

List<Opportunity> opps=[select name, type, amount, stageName from opportunity where stageName='Closed Won'];
string jsonList= JSON.serialize(opps);
System.debug(jsonList);

List<Case> listCase=[select subject, CaseNumber, Description, Contact.FirstName, Contact.LastName,Account.name from case where subject!=null  limit 2];
string cl=JSON.serialize(listCase);
System.debug(cl);