public class BatchApexStateful implements Database.Batchable<sobject>, Database.Stateful {
    
    public Integer numberOfRecordsUpdated=0;
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('Select id, rating from Account');
    }
    
    public void execute(Database.BatchableContext bc, List<Account> accList){
        
        for( Account acc : accList){
           acc.rating='warm';
           numberOfRecordsUpdated++;
        }
        
        update accList;
        System.debug(accList.size());
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug(numberOfRecordsUpdated+' accounts upated');
       
    }
    
    

}