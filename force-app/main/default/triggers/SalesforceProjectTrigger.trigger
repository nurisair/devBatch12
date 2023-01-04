trigger SalesforceProjectTrigger on Salesforce_Project__c(before insert, after insert, before update, after update) {
    if (trigger.isAfter&&trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultTrigger(Trigger.New);

        System.debug('Callling FUTURE Method');
        SalesforceProjectTriggerHandler.updateDesc(trigger.newMap.keySet());
        System.debug('FUTURE Methd Called.');
    }
    if (trigger.isBefore&&trigger.isUpdate){
        //SalesforceProjectTriggerHandler.validateSPComplete(Trigger.New, Trigger.old, trigger.oldMap, trigger.newMap);
    }
}