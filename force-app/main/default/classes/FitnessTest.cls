@isTest
public class FitnessTest {

    @isTest
    static void testBmi1(){

        //arrange
        Decimal weight=52;
        Decimal height=1.60;
        //act
        Decimal bmi=Fitness.calculateBMI(weight, height);
        //assert
        System.assertEquals(20.3125, bmi,'bmi is not calculated correctly');

    }

    @isTest
    static void testBmi2(){

        //arrange
        Decimal weight=52;
        Decimal height=0;
        //act
        Decimal bmi=Fitness.calculateBMI(weight, height);
        //assert
        System.assertEquals(-1, bmi,'bmi is not calculated correctly');

    }

    @isTest
    static void testPace1(){

        //arrange
        Decimal distance=5;
        Decimal minutes=30;
        //act
        Decimal pace=Fitness.calculatePace(distance, minutes);
        //assert
        System.assertEquals(10, pace,'pace is not calculated correctly');

    }

    @isTest
    static void testPace2(){

        //arrange
        Decimal distance=5;
        Decimal minutes=0;
        //act
        Decimal pace=Fitness.calculatePace(distance, minutes);
        //assert
        System.assertEquals(-1, pace,'pace is not calculated correctly');

    }
    
    
}