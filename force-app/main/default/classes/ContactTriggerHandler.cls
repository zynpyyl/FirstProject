public with sharing class ContactTriggerHandler {

    public static Boolean isFirstRun=true;

    public static void handle(List<Contact> conList){

    if(isFirstRun){
    
    isFirstRun=false;

    //initialize list of contacts to update
    List<Contact> spouses = new List<Contact>();

    //iterate our contact records
    for (Contact con : conList) {

        //I will check if spouse field is populated or not

        if(con.Spouse__c!=null){
            Contact spouse = new Contact();
            spouse.id=con.Spouse__c; // set record id to Eva Brown's id
            spouse.Spouse__c=con.id; // set spouse lookup id to Jon Brown's id
            spouses.add(spouse);

        }
        
    }

    update spouses;
}
}
}