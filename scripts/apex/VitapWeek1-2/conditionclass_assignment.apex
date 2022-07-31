conditionclass_assignment mn= new conditionclass_assignment();
string month1=mn.ifclassMethod(1);
System.debug('month1 is '+ month1);
String month2=mn.ifclassMethod(2);
System.debug('month2 is '+month2);
String month15=mn.ifclassMethod(15);
system.debug(month15);

conditionclass_assignment nq= new conditionclass_assignment();
String nameOfMonth1=nq.caseMethod('January');
System.debug('January in '+nameOfMonth1);
String nameOfMonth2=nq.caseMethod('April');
System.debug('April in '+nameOfMonth2);
String name3=nq.caseMethod('December');
System.debug('December in '+name3);
String invalidName=nq.caseMethod('Fatih');
System.debug(invalidName);