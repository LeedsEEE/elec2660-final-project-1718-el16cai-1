//
//  CalorieTableViewController.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalorieModel.h"
#import "SecondViewController.h"
/**
 Class That Implements All The Protocol To Set Up A Table For The calorie Chart.
 */
@interface CalorieTableViewController : UITableViewController
@property (strong,nonatomic) CalorieModel *CalorieData;
//creates an object in the table view controller so that I can access the data stored

@end
