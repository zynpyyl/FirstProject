//create 5 contacts with LastName 'Brown1', 'Brown2'......'Brown5'
//create a new Account with Name='Test Account'
//relate the account with contacts while creating them
//insert them

Account acc = new Account (Name='Test Account');

insert acc;

List<Contact>conToInsert=new List<Contact>(); 

for(Integer i=1; i<=5 ;i++) {
    Contact con=new Contact(LastName='Brown'+i);
    con.AccountId=acc.Id;
    conToInsert.add(con);
}

insert conToInsert;
