//
//  BMIDataModel.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 02/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 Class to represent The Data Model of the BMI Calculator.
 */
@interface BMIDataModel : NSObject
@property float height;
@property float weight;
@property float bmi;

@property (weak, nonatomic) IBOutlet UITextField *HeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *WeightTextField;
@property (weak, nonatomic) IBOutlet UITextField *BMITextField;
@property (weak, nonatomic) IBOutlet UITextField *StatusTextField;


-(float) calculateBMIwithHeight:(float) height andWeight:(float) weight;
-(NSString*)getBMIStatuswithHeight:(float) height andWeight:(float) weight;
@end
