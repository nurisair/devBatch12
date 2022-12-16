trigger ContactTrigger on Contact  (before insert, before update, after insert, after update) {
    if (trigger.isBefore) {
        if (trigger.isUpdate) {
            ContactTriggerHandler.updateContactValidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            ContactTriggerHandler.updateContactValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }
    
}