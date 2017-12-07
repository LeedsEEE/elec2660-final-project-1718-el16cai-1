//
//  DetailInformationViewController.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DetailInformationViewController.h"

@interface DetailInformationViewController ()

@end

@implementation DetailInformationViewController
@synthesize InformationStringClass;
- (void)viewDidLoad {
    _NameLabel.text=InformationStringClass.NameString;
    _AgeLabel.text=InformationStringClass.AgeString;
    _GenderLabel.text=InformationStringClass.GenderString;
    _HeightLabel.text=InformationStringClass.HeightString;
    _WeightLabel.text=InformationStringClass.WeightString;
    _CurrentBMILabel.text=InformationStringClass.CurrentBMIString;
    _ExpectedBMILabel.text=InformationStringClass.ExpectedBMIString;
    _ExpectedCaloriesLabel.text=InformationStringClass.ExpectedCaloriesString;
   
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark method that allows user to exit a view after the button has been pressed
- (IBAction)exit:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    //The code above is the code that enables the button to go back to the previous view
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
