trigger SalesforceProjectTrigger on Salesforce_Project__c(before insert, after insert, before update, after update) {
    if (trigger.isAfter&&trigger.isInsert) {
        SalesforceProjectTriggerHandler.createDefaultTrigger(Trigger.New);
    }
    if (trigger.isBefore&&trigger.isUpdate){
        SalesforceProjectTriggerHandler.validateSPComplete(Trigger.New, Trigger.old, trigger.oldMap, trigger.newMap);
    }
}