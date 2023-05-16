//reverse a given string do not use reverse method

String str='reverse me';

String reverse='';

for(Integer i=str.length()-1; i>=0 ;i--) {
    reverse+=str.substring(i,i+1);
}

System.debug(reverse); 

String strn = 'The quick brown fox jumps over the lazy dog';

String one=strn.replace('o', '*');

System.debug(one); 

String two=strn.replaceAll('o', '*');

System.debug(two); 
