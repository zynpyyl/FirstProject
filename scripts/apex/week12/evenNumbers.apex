//Create a program to write the even numbers from 10 to 20
//both included, except 16, in 3 different ways:

//Incrementing 2 in each step (use "continue" to skip 16)
for(Integer i=10;i<=20;i+=2){
    if(i==16)
        continue;
    System.debug(i); 
}

System.debug('--------------------'); 

//Incrementing 1 in each step (use "continue")
for(Integer i=10;i<=20;i++){
    if(Math.mod(i,2)==0){   
        if(i==16)
            continue;
        System.debug(i); 
}}

System.debug('--------------------');

//use regular for loop
for(Integer i=10;i<=20;i+=2){
    if(i!=16)
    System.debug(i); 
}

System.debug('--------------------');

//With an endless loop (using "break" & "continue")

for (Integer i = 10; ; i += 2)
		{
			if (i == 16)
			{
				continue;
			}
			if (i > 20)
			{
				break;
			}
			System.debug(i);
		}





