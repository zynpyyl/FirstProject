//multiply two positive numbers without using *

Integer num1 = 10, num2= 6;
Integer sum=0;
if(num1>=0&&num2>=0){
    for(Integer i=1;i<=num1;i++){
        sum+=num2;
    }
}
System.debug(sum);
