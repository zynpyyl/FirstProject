//find the factorial of any given number
//5!=5*4*3*2*1
//4!=4*3*2*1


Integer num=5;
Integer factorial=1;
for(Integer i=1;i<=num;i++){
    factorial*=i;
}

System.debug(num+'! = '+factorial); 


