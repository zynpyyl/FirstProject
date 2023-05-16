trigger Book on Book__c (before insert) {

//reach contact ids of books

Set<Id> cons = new Set<Id>();

for(Book__c each : trigger.new){
    cons.add(each.contact__c);
}

//get the contacts' ownerId field

List<Contact> conList = [Select id, ownerId from Contact where id in : cons];


for(Book__c eachBook : trigger.new){
    for(Contact con : conList){
        if(eachBook.contact__c==con.id){
            eachBook.ownerId=con.OwnerId;
        }
    }
}

}