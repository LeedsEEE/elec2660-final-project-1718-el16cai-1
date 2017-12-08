//
//  BMIDataModel.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 02/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BMIDataModel.h"

@implementation BMIDataModel
-(float) calculateBMIwithHeight:(float) height andWeight:(float) weight {
    //converts them from a string to a number
    float bmi= (weight/(height * height));
    return bmi;
}
//Method to determine the status
-(NSString*)getBMIStatuswithHeight:(float) height andWeight:(float) weight{
    
    float bmi= (weight/ (height * height));
    if (bmi<15.0){
        return @"You Are Very severely underweight";
        
    }
    else if(bmi >= 15 && bmi < 16){
        return @"You Are Severely Underweight";
    }
    else if(bmi>=16.0 && bmi<18.5){
        return @"You Are Underweight";
    }
    else if(bmi>=18.5 && bmi<25){
        return @"You Are Normal(Healthy)";
    }
    else if(bmi>=25 && bmi<30){
        return @"You Are Overweight";
    }
    else if(bmi>=30 && bmi<35){
        return @"You Belong To Obese Class I";
    }
    else if(bmi>=35 && bmi<40){
        return @"You Belong To Obese Class II";
    }
    else{
        return @"You Belong To Obese Class III"
        ;    }
}


@end
