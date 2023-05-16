//Fitness.calculateBMI(weight, height)

Decimal bmi = Fitness.calculateBMI(52, 1.58);
System.debug('BMI for weight 52 and height 1.58 is: '+ bmi.setScale(3));


//Fitness.calculatePace(distance, minutes)

Decimal pace = Fitness.calculatePace(5, 30);
System.debug('Pace for km/h for km 5 and minutes 30 is: '+pace.setScale(3));