String size='grande';

if(size=='venti'){
    System.debug(size+':price is $4.29 \n150 calories');
}else if(size=='tall'){
    System.debug(size+':price is $3.69 \n90 calories');
}else if(size=='grande'){
    System.debug(size+':price is $3.99 \n120 calories');
}else{
    System.debug('Invalid size');
}

String result;
switch on size{
    when 'venti'{
        result=size+':price is $4.29 \n150 calories';
    }
    when 'tall'{
        result=size+':price is $3.69 \n90 calories';
    }
    when 'grande'{
        result=size+':price is $3.99 \n120 calories';
    }
    when else{
        result='Invalid size';
    }
}
System.debug(result);


result= (size=='venti')? size+':price is $4.29 \n150 calories' :
(size=='grande')? size+':price is $3.99 \n120 calories' :
(size=='tall')? size+':price is $3.69 \n90 calories': 'Invalid size';

System.debug(result);