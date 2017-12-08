//
//  DetailInformationViewController.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InformationString.h"
/**
 Class That Represents The View Controller That Displays Information Based on what is computed in The Information View controller.
 */
@interface DetailInformationViewController : UIViewController

@property(nonatomic,strong)InformationString *InformationStringClass;


@property (weak, nonatomic) IBOutlet UILabel *NameLabel;
@property (weak, nonatomic) IBOutlet UILabel *AgeLabel;
@property (weak, nonatomic) IBOutlet UILabel *GenderLabel;
@property (weak, nonatomic) IBOutlet UILabel *HeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *WeightLabel;
@property (weak, nonatomic) IBOutlet UILabel *ExpectedBMILabel;
@property (weak, nonatomic) IBOutlet UILabel *CurrentBMILabel;
@property (weak, nonatomic) IBOutlet UILabel *ExpectedCaloriesLabel;

@end
