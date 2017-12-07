//
//  InformationViewController.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "InformationViewController.h"
#import "DetailInformationViewController.h"


@interface InformationViewController ()

@end

@implementation InformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"information"]) {
        DetailInformationViewController *destvc=segue.destinationViewController;
        InformationString *InformationStringClass=[[InformationString alloc]init];
        InformationStringClass.NameString=_NameTextField.text;
        InformationStringClass.AgeString=_AgeTextField.text;
        InformationStringClass.GenderString=_GenderTextField.text;
        InformationStringClass.HeightString=_HeightTextField.text;
        InformationStringClass.WeightString=_WeightTextField.text;
        InformationStringClass.ExpectedBMIString=_ExpectedBMITextField.text;
        InformationStringClass.CurrentBMIString=_CurrentBMITextField.text;
    InformationStringClass.ExpectedCaloriesString=_ExpectedCaloriesTextField.text;
        destvc.InformationStringClass=InformationStringClass;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    //Code to pass data between views gotten from https://www.youtube.com/watch?v=_HMBdkXbv9s
    //Launch screen image gotten from https://www.clker.com/clipart-weightlifting.html
    //App icon of this view controller gotten from https://icons8.com/icon/new-icons/all
}



@end
