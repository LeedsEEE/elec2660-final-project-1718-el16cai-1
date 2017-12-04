//
//  BMIDataModel.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 02/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BMIDataModel.h"

@implementation BMIDataModel
-(void) calculateBMI {
    //converts them from a string to a number
    float height= [self.HeightTextField.text floatValue];
    float weight=[self.WeightTextField.text floatValue];
    
    float bmi= (weight/ (height * height));
    
    self.BMITextField.text=[NSString stringWithFormat: @"BMI= %.2f", bmi];
    
    if (bmi<15.0){
        self.StatusTextField.text=@"Very severely underweight";
        
    }
    else if(bmi >= 15 && bmi < 16){
        self.StatusTextField.text=@"Severely Underweight";
    }
    else if(bmi>=16.0 && bmi<18.5){
        self.StatusTextField.text=@"Underweight";
    }
    else if(bmi>=18.5 && bmi<25){
        self.StatusTextField.text=@"Normal(Healthy)";
    }
    else if(bmi>=25 && bmi<30){
        self.StatusTextField.text=@"Overweight";
    }
    else if(bmi>=30 && bmi<35){
        self.StatusTextField.text=@"Obese Class I";
    }
    else if(bmi>=35 && bmi<40){
        self.StatusTextField.text=@"Obese Class II";
    }
    else{
        self.StatusTextField.text=@"Obese Class III"
        ;    }
}

@end
