trigger AccountTrigger1 on Account (before insert,before update) {

//Create “Sales Rep” field in UI with data type (text) on the Account object. 
//While we create or update account records, account owners name will be systematically 
//inserted into the sales representative field.

Set<Id> ids = new Set<Id>();

for(Account each : trigger.new){
    ids.add(each.OwnerId);
}

//owner id is a user object

//retrieve the fields from user object
List<User> userList = [SELECT Name FROM user WHERE Id IN: ids];

Map<Id,User> usermap=new Map<Id,User>(userList);




for(Account each : trigger.new){
    each.sales_rep__c=usermap.get(each.OwnerId).Name;
}

/*
for(Account each : trigger.new){
    for(User users : userList){
        if(each.OwnerId==users.id){
            each.sales_rep__c=users.name;
        }
    }
}
*/






}