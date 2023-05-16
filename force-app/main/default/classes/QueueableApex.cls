public class QueueableApex implements Queueable {
    
    public void execute(QueueableContext qc){
        
        List<Account> accList = new List<Account>();
        for(Integer i=0;i<10;i++){
            Account acc = new Account();
            acc.Name='Test Account'+i;
            accList.add(acc);            
        }
        insert accList;       
        
    }

}