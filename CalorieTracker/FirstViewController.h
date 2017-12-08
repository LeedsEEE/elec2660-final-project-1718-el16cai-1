//
//  FirstViewController.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "BMIDataModel.h"
/**
 Class to represent The View Controller that calculates the BMI.
 */
@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *HeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *WeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *BMITextField;
@property (weak, nonatomic) IBOutlet UISlider *HeightSlider1;
@property (weak, nonatomic) IBOutlet UISlider *Weightslider1;
@property (weak, nonatomic) IBOutlet UITextField *StatusTextField;

- (IBAction)HeightSlider:(UISlider *)sender;
- (IBAction)WeightSlider:(UISlider *)sender;
- (IBAction)ResetButton:(UIButton *)sender;

@property (strong,nonatomic)BMIDataModel *personalbmicalc;
@end

