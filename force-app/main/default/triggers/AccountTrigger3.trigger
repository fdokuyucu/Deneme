// trigger AccountTrigger3 on Account (before insert, before update, after insert,after update) {
//     System.debug('====Trigger is start here=====');
//     if (trigger.isAfter && trigger.isUpdate) {
//         List<Account> oldAccount = trigger.old;
//         List<Account> newAccount = trigger.new;
//         for (account oldAcc : oldAccount) {
//             System.debug('old account id  ' + oldAcc.id + '  old accounc name  '+ oldAcc.Name);
//         }
//         for (account newAcc : newAccount) {
//             System.debug('new ocunt id  ' +newAcc.Id + '  new account name  '+ newAcc.Name);
//         }
//     }
//     System.debug('-----trigger end here----');

// }