list<case> ListCase = new List<Case>();
for (Integer i = 0; i < 10; i++) {
    case cs1= new case();
    cs1.Status='New';
    cs1.Origin='Email';
    ListCase.add(cs1);
}
insert ListCase;


List<Case> newListCase = new List<Case>();
List<Case> ListCase1 =[Select origin from case where createdDate=today ];
for (case eachCase : ListCase1) {
    eachCase.Origin='Email';
    newListCase.add(eachCase);
}
update newListCase;

List<Account> accList = new List<Account>();
List<Account> exAcc= [select AnnualRevenue from Account where AnnualRevenue !=null];
for (account eachAcc : exAcc) {
    eachAcc.AnnualRevenue=eachAcc.AnnualRevenue-10000;
    accList.add(eachAcc);
}
update accList;
