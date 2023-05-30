public class ContactCreator {

//Create a contact whenever you create an account with the account name
//use future method

    @future
    public static void createContact(String accJson){

    List<Account> accList = (List<Account>) json.deserialize(accJson, List<Account>.class);
    List<Contact> conList = new List<Contact>();

    for(Account acc : AccList){
        Contact con = new Contact(LastName=acc.Name);
        con.accountId = acc.id;
        conList.add(con);

    }

    insert conList;
}
}