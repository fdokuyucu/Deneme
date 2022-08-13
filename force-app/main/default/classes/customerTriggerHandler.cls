public  class customerTriggerHandler {
    public static void createPayment(list<Customer__c> custTriggerNew, 
                                    List<Customer__c> custTriggerOld,
                                    Map<Id,Customer__c> custTriggerNewMap,
                                    map<id, Customer__c> custTriggerOldMap) {
        list<Payments__c> ListofPay= new List<Payments__c>();                                
        for (Customer__c  eachCust : custTriggerNew) {
            Payments__c newPay= new Payments__c();
            newPay.Amount__c = 0.1;
            newPay.Mode__c='Online';
            newpay.Customer__c=eachCust.Id;

            Payments__c newPay2= new Payments__c();
            newPay2.Amount__c=1;
            newPay2.Mode__c='Crypto'; 
            newPay2.Customer__c=eachCust.Id;
            ListofPay.add(newPay);
            ListofPay.add(newPay2);               
                

            }
         
        if(!ListofPay.isEmpty()) {
            insert listofPay;
        }                              
        
    }
}
