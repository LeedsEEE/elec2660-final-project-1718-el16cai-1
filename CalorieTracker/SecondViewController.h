//
//  SecondViewController.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calorie.h"
/**
 Class to represent an The View Controller That Displays Information From The Table.
 */
@interface SecondViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *foodtypetextfield;
@property (weak, nonatomic) IBOutlet UITextField *caloriestextfield;
@property (weak, nonatomic) IBOutlet UITextField *servingsizetextfield;
@property (weak, nonatomic) IBOutlet UIImageView *foodimage;
@property (strong,nonatomic) Calorie *calorie;

@end

