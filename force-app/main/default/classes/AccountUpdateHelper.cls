public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccWebsite(List<id> accIds) {
        List<Account> listAcc=[select id, website from Account where id in:accIds];

        for (account eaAcc : listAcc) {
            eaAcc.Website='softinnovas.com';
        }
        update listAcc;
    }
}
