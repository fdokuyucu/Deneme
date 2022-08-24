DeleteContactBatchSchedulable delCont= new DeleteContactBatchSchedulable();
String cron= '0 0 13 * * ?';
Id JobId=System.schedule('Delt cont Everyday', cron, delCont);