//
//  FirstViewController.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.personalbmicalc=[[BMIDataModel alloc]init];
    self.HeightSlider1.value=0.0;
    self.Weightslider1.value=0.0;
    // Disable the user's interaction with the text fields
    self.WeightTextField.userInteractionEnabled = NO;
    self.HeightTextField.userInteractionEnabled=NO;
    self.BMITextField.userInteractionEnabled=NO;
    self.StatusTextField.userInteractionEnabled=NO;
    // Do any additional setup after loading the view, typically from a nib.
}
//Launch screen image gotten from https://www.clker.com/clipart-weightlifting.html
//App icon of this view controller gotten from https://icons8.com/icon/new-icons/all

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This code gets the value of the height from the slider
//The value of the BMI is gotten from a combination of methods to get the height and weight from the slider value
//The Status is gotten from a combination of methods to get the the height and weight from the slider value
- (IBAction)HeightSlider:(UISlider *)sender {
    self.HeightTextField.text=[NSString stringWithFormat:@" %.2f m",sender.value];
    _BMITextField.text = [NSString stringWithFormat:@"%.2f", [_personalbmicalc calculateBMIwithHeight:[self.HeightTextField.text floatValue] andWeight:[self.WeightTextField.text floatValue]]];
    self.StatusTextField.text = [_personalbmicalc getBMIStatuswithHeight:[self.HeightTextField.text floatValue] andWeight:[self.WeightTextField.text floatValue]];
    
   
}
//This code gets the value of the weight from the slider
//The value of the BMI is gotten from a combination of methods to get the height and weight from the slider value
//The Status is gotten from a combination of methods to get the the height and weight from the slider value
-(IBAction)WeightSlider:(UISlider *)sender{
    self.WeightTextField.text=[NSString stringWithFormat:@"%.2f kg",sender.value];
    _BMITextField.text = [NSString stringWithFormat:@"%.2f", [_personalbmicalc calculateBMIwithHeight:[self.HeightTextField.text floatValue] andWeight:[self.WeightTextField.text floatValue]]];
    self.StatusTextField.text = [_personalbmicalc getBMIStatuswithHeight:[self.HeightTextField.text floatValue] andWeight:[self.WeightTextField.text floatValue]];
}

//The code to obtain the bmi and status from the data model was given through suggestions from a fellow student.
//Method that implements protocol to be carried out when the button is pressed.
- (IBAction)ResetButton:(UIButton *)sender {
    self.HeightSlider1.value= 0.0;
    self.Weightslider1.value=0.0;
    self.WeightTextField.text=[NSString stringWithFormat:@"0.00"];
    self.BMITextField.text=[NSString stringWithFormat:@"N/A"];
    self.HeightTextField.text=[NSString stringWithFormat:@"0.00"];
    self.StatusTextField.text=[NSString stringWithFormat:@"NIL"];
    }

@end
