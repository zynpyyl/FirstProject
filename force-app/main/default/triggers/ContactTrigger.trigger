trigger ContactTrigger on Contact (after insert,after update) {

    ContactTriggerHandler.handle(trigger.new);

}