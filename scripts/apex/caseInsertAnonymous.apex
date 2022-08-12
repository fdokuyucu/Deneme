List<Case> listCase= [select id, subject from case];
for (case c : listCase) {
    c.subject+='2';

}
update listCase;


List<Case> caseList= new List<Case>();
for (Integer i = 0; i < 405; i++) {
    case c = new case();
    c.Subject='there is abug-v'+i;
    c.Description='resolve it';
    c.Origin='Web';
    c.Status='New';
    caseList.add(c);    
}
insert caseList;