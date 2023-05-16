//create Contact sObject instance and insert into your SF

// Contact con = new Contact ();
// con.FirstName='Example';
// con.LastName='Test1';


// System.debug(con);

// insert con;
// insert con1;

// List<Contact> conList = new List<Contact>{ con,con1};

// con.FirstName='Apex from upsert';
// con1.FirstName='Java from upsert';

List<Contact> conList = [SELECT Id, Name FROM Contact LIMIT 5];

System.debug(conList);






