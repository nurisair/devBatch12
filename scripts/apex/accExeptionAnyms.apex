
try{
    account ac = new account();
    insert ac;
}catch(DmlException dex){
    system.debug('DML went wrong!');
    system.debug('Exeption message is '+ dex.getMessage()+' and the exeption line is '+ dex.getLineNumber());
}
catch (Exception ex){
    system.debug('Something went wrong!');
 }

System.debug('APEX is SIMPLE');