public class AccountInvocable {
    @InvocableMethod(label='Close Opportunitities'
    description='This method is gonna update the stagename of all opps under the given account to closed lost'
    category='Nuris Quick Actions')// account or opp does not matter much, you can give another name. if no name given it will be listed as uncategorized category
    public static void closeOpportunities(List<Id> accountIds) {
        //get all opps under the account
        List<Opportunity> listOfOpps = [Select Id, StageName FROM Opportunity 
                                        WHERE AccountId IN :accountIds 
                                        AND StageName NOT IN ('Closed Won','Closed Lost')];
        for (opportunity eaOpps : listOfOpps) {
            eaOpps.StageName='Closed Lost';
        }
        if (!listOfOpps.isEmpty()) {
            try {
                update listOfOpps;                
            } catch (Exception ex) {
                //create a log
            }
        }
    }
}