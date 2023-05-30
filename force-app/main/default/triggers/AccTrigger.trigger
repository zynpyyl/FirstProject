trigger AccTrigger on Account (after insert) {

    String accJson = json.serialize(trigger.new);
    ContactCreator.createContact(accJson);

}