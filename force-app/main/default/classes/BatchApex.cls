public class BatchApex implements Database.Batchable<sobject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        //prepare the data 
        return Database.getQueryLocator('select id, name from Account');        
        
    }
    //gets the query from the start method as list
    public void execute(Database.BatchableContext bc, List<Account> accList){
        
        for(Account acc : accList){
            acc.Active__c='no';
        }        
        update accList;      
        
    }
    
    public void finish(Database.BatchableContext bc){}
    
    

}