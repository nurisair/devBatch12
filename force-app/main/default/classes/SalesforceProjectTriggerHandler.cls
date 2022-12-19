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
    public static void validateSPComplete(list<salesforce_project__c> spTriggerNew,list<salesforce_project__c> spTriggerOld, Map<Id,salesforce_project__c> spTriggerNewMap, Map<Id,salesforce_project__c> spTriggerOldMap) {
        
        set<Id> spIds=new set<Id>();
        for (Salesforce_Project__c eaSP : spTriggerNew ) {
            if (eaSP.Status__c =='Completed'&& (spTriggerNewMap.get(eaSP.Id).Status__c != spTriggerOldMap.get(eaSp.id).Status__c)) {
                spIds.add(eaSp.Id);
            }
            System.debug('the number of Project Ids which set status of COMPLETED  '+spIds.size());
        }
        List<Salesforce_ticket__c> listST = [select id, status__c, salesforce_project__c, Name from Salesforce_Ticket__c WHERE Salesforce_Project__c in :spIds and status__c!='Completed'];
        System.debug('list of SPs from spIds set which are not completed'+listST);

        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.Status__c.addError('Cannot update');
        }
 
    }
}
