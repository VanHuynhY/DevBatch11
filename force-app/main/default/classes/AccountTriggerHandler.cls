public class AccountTriggerHandler {
    public static void updateDescription(List<Account> accTriggerNew, List<account> accTriggerOld,
                                Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        for (account eachAcc : accTriggerNew) {
            boolean updateDesc = false;
            if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                //just update field
                updateDesc = true;
            }
            //if account is updated.
                //check if active field is changed from not yes to yes
                //then update description
            if (Trigger.isUpdate) {
                //get old account using OldMAP
                Account oldAccount = accTriggerOldMap.get(eachAcc.Id);
                //get new account using newMap
                Account newAccount = accTriggerNewMap.get(eachAcc.Id);
                //oldAccount.Active__c != newAccount.Active__c
                if (eachAcc.Active__c == 'Yes' &&
                   oldAccount.Active__c != newAccount.Active__c ) {
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is now active. Enjoy buddy!!';
            }
        }
    }
    public static void updateVIPforContacts(List<Account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, acount> accTriggerOldMap) {
        //create set account ids were vip is changed
            //10 account -> 3 vip is changed
        //get cobtacts for all those accounts
            //get contacts for all those 3 accounts. 10 contacts.
        //for loop on contacts
            //set vip for each contact

    }
}