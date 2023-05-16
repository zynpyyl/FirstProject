public class Fitness {
    //Create a Fitness class 
    
    //Create a method with name 'calculateBMI' which accepts necessary parameter and returns bmi value.
    
    //bmi=(body weight in kg)/(body height in meter)^2
    
    public static  decimal calculateBMI(decimal weight, decimal height){
        if(weight<=0 || height<=0){
            return -1;
        }else{//optional
        return weight/(height*height);
        }
    }
        
    
    
    //Create a method with name 'calculatePace' which accepts necessary parameter and returns km per hour
    
    //pace=(distance in km)/(time in hours)
    
    public static  decimal calculatePace(decimal distance, decimal minutes){
        if(distance<=0 || minutes<=0){
            return -1;
        }
     
        return distance/(minutes/60);
     
    }
  
    
    }