trigger ConTrigger on Contact (after insert, after update, after delete, after undelete) {

/*  Create a checkbox field on Contact named 'active'
    Create a number field on Account named 'Active Contacts' (Active_Contacts__c)
    You need to show total active child contacts on parent account, when a new contact is created or updated
    if the account has 3 contacts and two of them are active, active contacts should be equal to 2
    Hint: create two different logic for insert and update events
          think of in which conditions you should store the account ids (the conditions should differ in insert and update event)
          use your ids in a query ( use aggregate function )
          build final list of accounts to update
*/
    
    if(trigger.isAfter && trigger.isInsert){
        //retrieve the ids of the contacts that related to any account
        Set<Id> accountIds = new Set<Id>();
        for (Contact con : Trigger.new) {
            if (con.AccountId!=null) {
                // write automation logic here
                accountIds.add(con.AccountId);
            }
        }
        // get aggregate result for all accounts
        List<AggregateResult> results = [
            SELECT AccountId, COUNT(Id) totalContacts
            FROM Contact
            WHERE Active__c = TRUE AND AccountId IN :accountIds
            GROUP BY AccountId
        ];
        // build final list of accounts to update
        List<Account> accountsToUpdate = new List<Account>();
        
        for (AggregateResult result : results) {
            Account acc=new Account(id=(id)result.get('accountid'),
                                    active_contacts__c=(decimal)result.get('totalContacts'));
            accountsToUpdate.add(acc);
           }

        System.debug(accountsToUpdate);
      
        // insert the final list of account
        update accountsToUpdate;
  }

    if(trigger.isAfter && trigger.isUpdate){
        //find the accounts that contacts' active field or accountname field changed
        Set<Id> ids = new Set<Id>();
        for (Contact con : trigger.new) {
            Contact oldCon=trigger.oldMap.get(con.id);
            if(con.active__c!=oldCon.active__c)           
                ids.add(con.AccountId);
            if(con.AccountId!=oldCon.AccountId){  
                ids.add(con.AccountId);
                ids.add(oldCon.AccountId);
            }
        }

        //find the accounts and number of active contacts on this account
        AggregateResult[] result=[SELECT AccountId, count(id) totalContacts FROM Contact
                                  WHERE Active__c=true AND AccountId IN:ids
                                  GROUP BY AccountId];
        //change the active contacts field value
        List<Account> accToUpdate=new List<Account>();

        for (AggregateResult ar : result) {
            Account acc=new Account(id=(id)ar.get('AccountId'),
                                    active_contacts__c=(double)ar.get('totalContacts'));
            accToUpdate.add(acc);
        }

        update accToUpdate;


    }

    }

/*  test scenario1
    create a contact with active=false       active contacts=0 passed
    test scenario2
    create a contact with active=true        active contacts=1 passed
    test scenario3
    update a contacts active field to true   active contacts=2 passed
    test scenario4
    change an active contacts account field-->  both contacts active fields changed  passed



    */