public class OppUtility {
    
    public static void createTaskForNotClosedOpp(){
        
        List<Opportunity> oppList = [Select Id, Name, CloseDate, OwnerId FROM Opportunity where IsClosed=false AND CloseDate<TODAY];
        
        List<Task> taskList = new List<Task>();
        
        for(Opportunity opp : oppList){
            
            Task tsk = new Task();
            tsk.subject='Close this opp or change the close date';
            tsk.Priority='high';
            tsk.status='not started';
            tsk.OwnerId=opp.OwnerId;
            tsk.WhatId=opp.Id;
            taskList.add(tsk);    
        }
        insert taskList;
        
    }

}