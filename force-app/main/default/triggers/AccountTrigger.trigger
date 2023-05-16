trigger AccountTrigger on Account (before update, after update) {

//when user updates account's billing street, change the related contacts mailing street

if(trigger.isAfter && trigger.isUpdate){

    AccountTrigger1Handler.afterUpdate(trigger.new, trigger.oldMap);

        
}
}