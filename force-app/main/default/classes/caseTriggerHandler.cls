public class caseTriggerHandler {
    public static Integer countTriggerExe = 0;
    public static integer countRecUpdated =0;

    public static void createTasks(list<case> triggerNew) {
        list<task> tskList = new List<Task>();

        for (case eaCase : triggerNew) {
            task t = new task();
            t.Subject='Call';
            t.Status='In Progress';
            t.Priority='High';
            t.WhoId=eaCase.ContactId;
            t.WhatId=eaCase.Id;
            tskList.add(t);
        }
        System.debug('Task list is '+tskList);
        if (!tskList.isEmpty()) {
            insert tskList;
        }

    }
}