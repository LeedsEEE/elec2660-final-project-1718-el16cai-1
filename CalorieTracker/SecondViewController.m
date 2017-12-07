//
//  SecondViewController.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.foodtypetextfield.text=self.calorie.foodtype;
    self.caloriestextfield.text=[NSString stringWithFormat:@"%ld",self.calorie.calories];
self.servingsizetextfield.text=self.calorie.ServingSize;
    self.foodimage.image=[UIImage imageNamed:self.calorie.imageName];
 self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"food1.jpg"]];
    //Image gotten from http://gordotaqueria.co
    
    // Code To Disable text fields
    self.foodtypetextfield.userInteractionEnabled = NO;
    self.caloriestextfield.userInteractionEnabled=NO;
    self.servingsizetextfield.userInteractionEnabled=NO;
    }
    
    // Do any additional setup after loading the view, typically from a nib.

//Launch screen image gotten from https://www.clker.com/clipart-weightlifting.html
//App icon of this view controller gotten from https://icons8.com/icon/new-icons/all

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
