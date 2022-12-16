public class SalesforceProjectTriggerHandler {
    public static void createDefaultTrigger(list<salesforce_project__c> spTriggerNew) {
        List<Salesforce_ticket__c> STList = new List<Salesforce_ticket__c>();
        for (salesforce_project__c eaSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c='Default st';
            st.Salesforce_Project__c=eaSP.Id;
            STList.add(st);
        }
        if (!stlist.isEmpty()) {
            insert STList;
        }
    }
}
