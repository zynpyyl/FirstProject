trigger condup on Contact (before insert) {

  // Write a trigger on contact to prevent duplicate records based on Contact Email & Contact Phone. 


  if(Trigger.isBefore && Trigger.isInsert){

    List<Contact> conList= [Select id, email, phone from Contact];

    List<String> emails = new List<String>();

    for(Contact each : conList){
        emails.add(each.email);
    }

    for (Contact con : trigger.new) {

        if(emails.contains(con.email)){
            con.addError('duplicate email');
        }
        
    }
}
}