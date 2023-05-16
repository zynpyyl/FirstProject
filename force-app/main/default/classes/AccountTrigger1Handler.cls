public  class AccountTrigger1Handler {
    public static void afterUpdate(List<Account> accList, Map<Id, Account> accMap){
    //when user updates account's billing street, change the related contacts mailing street
    
    Set<Id> accIdSet= new Set<Id>();
    for(Account each: accList){
        Account old=accMap.get(each.Id);
        if(each.BillingStreet!=old.BillingStreet){
            accIdSet.add(each.Id);
        }
    }
    
    List<Contact> conList= [select AccountId, MailingStreet
    from contact
    where AccountId !=null and AccountId in :accIdSet];
    List<Contact> conToUpdate= new List<Contact>();
    for(Account each:accList){
        for(Contact eachCon: conList){
            if(eachCon.AccountId==each.id){//added

    //    Account old=accMap.get(each.Id);
    //    if(each.BillingStreet!=old.BillingStreet){
    eachCon.MailingStreet=each.BillingStreet;
    conToUpdate.add(eachCon);
        }
    
        }
    }

    update conToUpdate;

    
    
        }
    }