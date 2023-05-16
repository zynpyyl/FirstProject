//find if the given number can be divisible by 9 or not
/*
Divisibility Rule of 9
That is, if the sum of digits of the number is divisible by 9, then the number itself 
is divisible by 9. 
Example: Consider 78532, as the sum of its digits (7+8+5+3+2) is 25, 
which is not divisible by 9, hence 78532 is not divisible by 9. */

Integer num = 990;
String str=num+'';
Integer sumOfDigits=0;
 
for(Integer i=0; i<str.length() ;i++) {
    sumOfDigits+=Integer.valueOf(str.substring(i,i+1));
}


if(Math.mod(sumOfDigits,9)==0)
    System.debug(num+' is divisible by 9'); 
else{
    System.debug(num+' is not divisible by 9'); 
}



