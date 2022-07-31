Calculator clc1= new Calculator();
clc1.printNewMessage('This is new age calc');
clc1.printNewMessage('this is realy new one');
clc1.printNewMessage('this is the third one');

String message = 'which one';
clc1.printNewMessage(message);

clc1.add(5, 80);
clc1.add(60, 100);
integer x=200;
Integer y=65;
clc1.add(x, y);


string resultStr = clc1.printAndReturnMessage('print this apex immediatly ');
System.debug(resultStr);

Calculator dt1 = new Calculator();
date newDate = date.today();
Boolean newDateLYcheck = dt1.leapYearCheck(newDate);
System.debug('is this Leap year -->' + newDateLYcheck);

date newDate2 = date.newInstance(2020, 02, 02);
Boolean newDateLYcheck2 = dt1.leapYearCheck(newDate2);
System.debug(newDate2 + ' this Leap year -->' + newDateLYcheck2);