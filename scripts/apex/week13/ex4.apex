
//write a program to print true if the string "cat" and "dog" appear the same number of times in the given sentence
//Ex:
//	  sentence = "caT dog dogG cAt"
//	  output:true

String str='caT dog dog cAt';

Integer len1=str.length();

//Integer len2=str.toLowerCase().replaceAll('cat','').length();

Integer len2=str.toLowerCase().remove('cat').length();

//Integer len3=str.toLowerCase().replaceAll('dog','').length();

Integer len3=str.toLowerCase().remove('dog').length();

System.debug('number of cats and dogs are equal :'+(len2==len3)); 

Integer numOfCats=0,numOfDogs=0;
for(String each : str.split(' ')) {
   if(each.equalsIgnoreCase('cat'))
        numOfCats++;
    else if(each.equalsIgnoreCase('dog'))
        numOfDogs++;
}

System.debug(numOfCats); 
System.debug(numOfDogs); 

System.debug('number of cats and dogs are equal :'+(numOfCats==numOfDogs)); 

    




