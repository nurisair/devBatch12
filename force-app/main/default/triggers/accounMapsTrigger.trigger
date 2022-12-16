trigger accounMapsTrigger on Account (before insert, before update, after insert, after update) {
    if (Trigger.isBefore) {
        accountTriggerHandler.updateAcctDesc(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
    }
}    


/* 
    List<account> accTriggerNew = trigger.new;
    List<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldMap;
    //keys means ids of newMap and oldMap are SAME (update)

    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<id> accIds = accTriggerNewMap.keySet();
        //for each loop of set of ids
            //get value of new account using ID from newMap
            //get value of old account using ID from oldMap
        integer countWebsite = 0;
        for (Id eachId : accIds) {
            system.debug('eachId -> ' + eachId);
    
            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('newAccount name -> ' + newAccount.Name);
            string newWebsite = newAccount.Website;
            
            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name -> ' + oldAccount.Name);
            string oldWebsite = oldAccount.Website;
    
            if (newWebsite != oldWebsite) {
                system.debug('Account ' + newaccount.Name + ', new website is ' + newWebsite);
                countWebsite++;
                }
        }
            system.debug('# account website updated --> ' + countWebsite);
    }
}
/*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger new: ' + accTriggerNew);
        system.debug('before insert trigger old: ' + accTriggerOld);
        system.debug('before insert trigger new map: ' + accTriggerNewMap);
        system.debug('before insert trigger old map: ' + accTriggerOldMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert trigger new: ' + accTriggerNew);
        system.debug('after insert trigger old: ' + accTriggerOld);
        system.debug('after insert trigger new map: ' + accTriggerNewMap);
        system.debug('after insert trigger old map: ' + accTriggerOldMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger new: ' + accTriggerNew);
        system.debug('before update trigger old: ' + accTriggerOld);
        system.debug('before update trigger new map: ' + accTriggerNewMap);
        system.debug('before update trigger old map: ' + accTriggerOldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger new: ' + accTriggerNew);
        system.debug('after update trigger old: ' + accTriggerOld);
        system.debug('after update trigger new map: ' + accTriggerNewMap);
        system.debug('after update trigger old map: ' + accTriggerOldMap);
    }
}
*/