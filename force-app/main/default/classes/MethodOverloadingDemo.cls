public class MethodOverloadingDemo {
    
    public void sum(Integer num1,Integer num2){

        System.debug('This is from method1 :'+(num1+num2));
    }

    public void sum(decimal num1,decimal num2){

        System.debug('This is from method2 :'+(num1+num2));
    }

    public void sum(Integer num1,Integer num2,Integer num3){

        System.debug('This is from method3 :'+(num1+num2+num3));
    }

    public void sum(decimal num1,Integer num2){

        System.debug('This is from method4 :'+(num1+num2));
    }







}