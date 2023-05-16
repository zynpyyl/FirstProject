public class UpdateContactAddress implements Database.Batchable<sobject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select id, name, billingcity, billingstate,(select id, mailingcity, mailingstate from Contacts) from Account where billingcountry=\'USA\'');
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList){
        List<Contact> conList = new List<Contact>();
        for( Account acc: accList){
            for(Contact con : acc.contacts){
                con.MailingCity=acc.BillingCity;
                con.MailingState=acc.BillingState;
                conList.add(con);
            }
        }
        update conList;
    }
    
    public void finish(Database.BatchableContext bc){}

}