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
//    self.BMITextField.text=[NSString stringWithFormat:@"%.2f",bmi];
}
-(NSString*)getBMIStatuswithHeight:(float) height andWeight:(float) weight{
    
    float bmi= (weight/ (height * height));
    if (bmi<15.0){
        return @"Very severely underweight";
        
    }
    else if(bmi >= 15 && bmi < 16){
        return @"Severely Underweight";
    }
    else if(bmi>=16.0 && bmi<18.5){
        return @"Underweight";
    }
    else if(bmi>=18.5 && bmi<25){
        return @"Normal(Healthy)";
    }
    else if(bmi>=25 && bmi<30){
        return @"Overweight";
    }
    else if(bmi>=30 && bmi<35){
        return @"Obese Class I";
    }
    else if(bmi>=35 && bmi<40){
        return @"Obese Class II";
    }
    else{
        return @"Obese Class III"
        ;    }
}


@end
