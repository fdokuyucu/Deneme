trigger contactTrigger_assgn on Account (before insert,before update, after insert, after update) {
    if (trigger.isAfter&&trigger.isInsert) {
        contactHandler_assg.createcontact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}