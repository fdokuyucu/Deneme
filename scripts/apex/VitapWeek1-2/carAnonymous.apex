car vm = new Car();
vm.carcolor='White';
vm.carName= 'Polo';
vm.switchOn();
vm.drive();
vm.driveAtMaxSpeed();
System.debug(vm);

System.debug('------------------------');

Car carObj1 = new car();
carObj1.switchOn();
Car bm = new Car();
bm.carcolor= 'black';
System.debug('car color = '+ bm.carcolor);
bm.switchOn();
System.debug('============================');
Car lm = new Car();
lm.carcolor= 'red';
lm.switchOn();
//lm.maxSpeedKmPerHr= 100;
System.debug(lm);

