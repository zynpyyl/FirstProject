//write a program that finds the median number from the given three different 
//numbers

Integer num1=10,num2=20,num3=15;
if(num1>num2&&num2>num3||num3>num2&&num2>num1){
    System.debug('num2 is median');
}
if(num2>num1&&num1>num3||num3>num1&&num1>num2){
   System.debug('num1 is median');
}
if(num1>num3&&num3>num2||num2>num3&&num3>num1){
    System.debug('num3 is median');
}