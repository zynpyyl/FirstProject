//change the first and last numbers of an Integer list

List<Integer> list1=new List<Integer>{90,20,30,50,80,40,10};

Integer temp=list1[0];

list1[0]=list1[list1.size()-1];

list1[list1.size()-1]=temp;

System.debug(list1); 

Contact con1 = new contact(LastName='Will');
System.debug('con1 value is : ' + con1); 

Contact con2 = con1;
System.debug('con2 value is : ' + con2); 

con2.LastName='Long';

System.debug('con1.Lastname value is : ' + con1.Lastname); 
System.debug('con2.Lastname value is : ' + con2.Lastname); 



