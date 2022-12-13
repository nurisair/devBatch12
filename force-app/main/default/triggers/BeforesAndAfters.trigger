trigger BeforesAndAfters on Account (before insert, before update, after insert, after update) {
   if(trigger.isBefore && trigger.isInsert){
    System.debug('before insert trigger.old is '+ trigger.old); //null
   }
   if(trigger.isAfter && trigger.isInsert){
    System.debug('after insert trigger.old is '+ trigger.old); //null
   }
   if(trigger.isBefore && trigger.isUpdate){
    System.debug('before UPDATE trigger.old is '+ trigger.old); 
   }
   if(trigger.isAfter && trigger.isUpdate){
    //System.debug('after UPDATE trigger.old is '+ trigger.old);
    for (account eaAcc  : trigger.old) {
        System.debug('Old Account is '+eaAcc.Name+ ' and old account id is '+eaAcc.Id);
    }
    for (account eaAcc2 : trigger.new) {
        System.debug('NEW Account name is '+eaAcc2.Name+' NEW Account Id is '+eaAcc2.Id);
    }
   }
   
    /*
    if (trigger.isBefore) {
        system.debug('We are in BEFORE ');
        if (trigger.isInsert) {
            System.debug('Before Insert');
        }
        if (trigger.isUpdate) {
            System.debug('Before Updade');
        }
    }
    if (trigger.isAfter) {
        System.debug('we are in AFETER');
        if (trigger.isUpdate) {
            System.debug('AFETER update called');
        }
        if (trigger.isInsert) {
            System.debug('After insert');
        }

    }
    */



}