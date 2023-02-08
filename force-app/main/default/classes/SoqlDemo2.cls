public  class SoqlDemo2 {
    public static void childToParent() {
        List<contact> listContact = [select id, name, account.name , account.Industry
                            from contact where account.industry = 'energy'];
        for (contact eachContact : listContact) {
            string cntName = eachContact.Name;
            string cntId = eachContact.Id;
            string accountName = eachContact.account.Name;
            string accountInd = eachContact.account.Industry;
            system.debug('contact name is ' + cntName + ', account name is ' + accountName);
        }
    }
    public static void parentToChild() {
        List<Account> lstAcc = [select id, name, annualrevenue,(select name, amount from Opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        
        for (account eaAcc : lstAcc) {
            System.debug('Account name is '+ eaAcc.Name+' and annual revenue '+eaAcc.AnnualRevenue);
            List<Opportunity> lstOpp=eaAcc.Opportunities;
            for (opportunity eaOpp : lstOpp) {
                System.debug('----> Name of opp is '+eaOpp.Name+' and amount '+eaOpp.Amount);
            }

        }
    }
}