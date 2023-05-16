Pizza myPizza = new Pizza ('M',2,3);
decimal cost = myPizza.calcCost();
System.debug('Your '+myPizza.size+' size pizza with '+ myPizza.numberOfCheeseTopping+' numberOfCheeseTopping and '
+myPizza.numberOfPepperoniTopping+' numberOfPepperoniTopping costs $'+cost);


//if you have a constructor with parameter your default constructor can not be called.
Pizza yourPizza = new Pizza();
yourPizza.size='S';
yourPizza.numberOfCheeseTopping=1;
yourPizza.numberOfPepperoniTopping=2;
System.debug('Your order costs $'+yourPizza.calcCost());