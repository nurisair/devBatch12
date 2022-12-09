trigger AccountTrigger on Account (before insert, before update) {
   System.debug('Account before INSERT trgr Called');
   System.debug('Account before UPDATE trgr Called');
   
   
   /* if(Trigger.isbefore){
    System.debug('Account before insert trigger called');
    }   
    if (Trigger.isAfter){
        System.debug('Account AFTER insert trigger called');
    }*/
}