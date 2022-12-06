public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc=new Account();
        acc.Name='Citir llc';
        insert acc;        
        System.debug('New created account is '+acc);
    }
    public static void dmlInsDemo_cstmObj() {
        salesforce_project__c spNew= new salesforce_project__c();
        spNew.project_name__c='Teach DML to Batch12';
        spNew.description__c='GREAT JOB!';
        insert spNew;
    }
    public static void dmlUpdateDm_01() {
        Account acc=new Account();
        acc.name= 'jhvbnl;ll';
        insert acc;

        acc.Name='Updated Acc Name inc.';
        update acc;

    }
}
