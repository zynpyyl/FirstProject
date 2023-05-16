//write a program that can identify if the number is positive, 
//negative or zero, do not use if

    Integer num=0;
    System.debug(num+' is a positive number: '+(num>0));
    System.debug(num+' is a negative number: '+(num<0));
    System.debug(num+' is zero: '+(num==0));

    if(num==0){
        System.debug(num+' is zero');
    }else if(num<0){
        System.debug(num+' is a negative number');
    }else{
        System.debug(num+' is a positive number');
    }


