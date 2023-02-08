trigger AccountTrigger2 on Account (before insert, before update, after insert, after update) {
   // System.debug('Account After insert trigger');
   //accountTriggerHandler.updateVIPforContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}