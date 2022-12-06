public class soqlDemo {
   public static void accountSOQL_1() {
        List<Account> lA = [select name, id from account WHERE Name LIKE '%a%'];
        System.debug('List of account is here ----> '+ lA);
   }

   public static void accountSoql_11() {
        Account acc=[select id, name, phone, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        System.debug('Latest account is '+acc);

        String accName = acc.name;
        String accPhone = acc.Phone;

        System.debug('Account name is '+accName+ ' account pohne is '+accPhone+ ' account number is '+ acc.AccountNumber);
    
   }
   public static void accountSoql_2() {
        List<Account> listAcc= [select id, name, phone, AccountNumber FROM Account ORDER BY CreatedDate DESc ];
        System.debug('All created account '+listAcc);

        for (Account eaAcc : listAcc) {
            String accName=eaAcc.Name;
            String accPh =eaAcc.Phone;
            System.debug('Account name is '+ accName+', acount phone is '+ accPh+ ' account number is '+eaACC.AccountNumber);
        }

   }
   public static void accFilterSoql(string accNameFilter) {
        List<Account> listAcc= [select id, name, phone, AccountNumber FROM Account where name= :accNameFilter ];
        system.debug('Filtered account -->'+ listAcc);
   }

}