public  class SpartanTriggerHandler {

    public static void handleAfterInsert(List<Spartan__c> spList){

        for(Spartan__c  each :  spList ){

            CallOutUtils.createSpartan(each.name, each.gender__c, each.phone__c); 
    
        }

 }
    }