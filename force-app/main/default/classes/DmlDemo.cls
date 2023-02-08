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

        acc.Name='SoftInnovas.';
        update acc;
    }
    public static void dmlDemo2() {
        Account acc=[select id, name from Account where name='Updated Acc Name inc.' limit 1];
        acc.name = 'Soft Ware Inc';
        update acc;
        System.debug('acc=> '+acc);
    }
    public static void dmlUpdateDm_02() {
        Account acc=[select id from Account where name ='Sen Manav'];
        Contact cnt = new Contact();
        cnt.LastName = 'Biden';
        cnt.FirstName='Joe';
        cnt.AccountId=acc.id;
        insert cnt;
        System.debug(acc);
        System.debug(cnt);
    }
    public static void dmlDemoUpdate5() {
        
        Salesforce_Project__c sp=[select id FROM Salesforce_Project__c ORDER BY CreatedDate DESC limit 1];

        Salesforce_Ticket__c st=new Salesforce_Ticket__c();
        st.Subject__c='Learn DML update';
        st.Priority__c='High';
        st.Requested_by_date__c=date.today();

        st.Salesforce_Project__c=sp.id;
        insert st;
    }
}