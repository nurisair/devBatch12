trigger CaseTrigger on Case (before insert, before update, after update, after insert) {
if (trigger.isUpdate) {
    System.debug('Before update trigger ran');
    caseTriggerHandler.countTriggerExe++;
    System.debug('# of times trigger RUN -->'+ caseTriggerHandler.countTriggerExe);

    caseTriggerHandler.countRecUpdated += trigger.size; //same as trigger.new.size();
    System.debug('# of total records updated --> '+ caseTriggerHandler.countRecUpdated);
}
if (trigger.isAfter&&trigger.isInsert) {
    caseTriggerHandler.createTasks(trigger.new);
}

}