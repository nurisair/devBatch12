public class accountUpdate2Helper {
    @invocableMethod
    public static void updateWebsite(List<Id> accIds) {
        List<Account> accList = [select id, website from Account WHERE id in :accIds];
        for (account eaAcc : accList) {
            eaAcc.Website='www.invocable.com';
        }
        if(!accList.isEmpty()){
            update accList;
        }

    }
}