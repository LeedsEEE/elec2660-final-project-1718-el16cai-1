//
//  ThirdViewController.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calorie.h"
#import "CalorieModel.h"


@interface ThirdViewController : UIViewController
//@property (weak, nonatomic) IBOutlet UITableView *mealtable;
- (IBAction)Optionsbutton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *CaloriesTextField;
//@property (weak, nonatomic) IBOutlet UIImageView *image;
//@property (weak, nonatomic) IBOutlet UILabel *thankslabel;
//@property (weak, nonatomic) IBOutlet UILabel *labelLoading;

@property (strong,nonatomic) Calorie *calorie;
@property (strong,nonatomic) CalorieModel *CalorieData1;

@end
