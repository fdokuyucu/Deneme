try{
    account acc = new Account();
    insert acc;
}catch(DMLException dex){
    System.debug('hi how are you DMLexemption');
}
System.debug('Apex is simple');