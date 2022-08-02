trigger AccountTrigger on Account (before insert, after insert) {
    System.debug('Trigger is start here');
   if (trigger.isBefore) {
    System.debug('Before INSERT trigger called');
   }
   if (trigger.isAfter) {
    System.debug('After INSERT trigger called ');
   }
  
   System.debug('trigger end here');
}