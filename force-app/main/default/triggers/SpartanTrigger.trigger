trigger SpartanTrigger on Spartan__c (after insert){
 
        SpartanTriggerHandler.handleAfterInsert(Trigger.new);   
    
    }

