/*Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number'  */

Double var = Math.random()*100;
System.debug(var); 

Integer num=var.intValue();

if(Math.mod(num,2)==0)
System.debug(num+' is even number'); 

if(Math.mod(num,5)==0)
System.debug(num+' is cool number'); 

if(Math.mod(num,7)==3)
System.debug(num+' is cooler number'); 

