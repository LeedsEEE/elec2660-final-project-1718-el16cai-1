//
//  InformationViewController.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InformationString.h"
/**
 Class That Represents The View Controller That Contains Text Fields To Fill In Certain Information.
 */
@interface InformationViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *NameTextField;
@property (weak, nonatomic) IBOutlet UITextField *AgeTextField;
@property (weak, nonatomic) IBOutlet UITextField *GenderTextField;
@property (weak, nonatomic) IBOutlet UITextField *HeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *WeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *ExpectedBMITextField;
@property (weak, nonatomic) IBOutlet UITextField *CurrentBMITextField;
@property (weak, nonatomic) IBOutlet UITextField *ExpectedCaloriesTextField;

@property(nonatomic,strong)NSString *stringtopass;

@property(nonatomic,strong)InformationString *InformationStringClass;
@end
