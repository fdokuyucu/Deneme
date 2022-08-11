trigger AssetTrigger on Asset (before insert, before update, after insert, after update) {
    if (trigger.isBefore) {
        AssetTriggerHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
}