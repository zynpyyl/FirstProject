public class AccountTriggerHandler {

    public static void ChangeChildContact(List<Account> list1, Map<Id,Account> map1){

        Set<Id> accountsChanged = new Set<Id>();

    for(Account accNew : list1){
        Account accOld =map1.get(accNew.Id);
        if(accNew.BillingStreet!=accOld.BillingStreet){
            accountsChanged.add(accNew.Id);
        }
    }

//with soql we will retrieve the fields of the account and child contacts

List<Account> accList = [Select Id, Billingstreet, (Select Id, MailingStreet from Contacts)
                        from Account
                        where Id in : accountsChanged ];

List<Contact> conList = new List<Contact>();

for( Account acc : accList){
    for(Contact con : acc.Contacts){
        con.MailingStreet=acc.BillingStreet;
        conList.add(con);
    }
}                       
                       
update conList;

}



}
   
