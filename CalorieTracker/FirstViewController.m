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
    self.HeightSlider1.value= 0.0;
    self.Weightslider1.value=0.0;
    //self.BMITextField.text=[NSString stringWithFormat:@"%.2f",self.personalbmicalc.bmi];
    // self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bmi.jpg"]];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)HeightSlider:(UISlider *)sender {
    self.HeightTextField.text=[NSString stringWithFormat:@" %.2f m",sender.value];
    float height= [self.HeightTextField.text floatValue];
    float weight=[self.WeightTextField.text floatValue];
    float bmi= (weight/ (height * height));
    self.BMITextField.text=[NSString stringWithFormat: @" %.2f", bmi];
}

- (IBAction)WeightSlider:(UISlider *)sender {
    self.WeightTextField.text=[NSString stringWithFormat:@"%.2f kg",sender.value];
    float height= [self.HeightTextField.text floatValue];
    float weight=[self.WeightTextField.text floatValue];
    float bmi= (weight/ (height * height));
    self.BMITextField.text=[NSString stringWithFormat: @"%.2f", bmi];
}

- (IBAction)ResetButton:(UIButton *)sender {
    self.HeightSlider1.value= 0.0;
    self.Weightslider1.value=0.0;
    self.WeightTextField.text=[NSString stringWithFormat:@"0.00"];
    self.BMITextField.text=[NSString stringWithFormat:@"N/A"];
    self.HeightTextField.text=[NSString stringWithFormat:@"0.00"];
    }

@end
