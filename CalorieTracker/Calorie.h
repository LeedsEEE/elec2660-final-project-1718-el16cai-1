//
//  Calorie.h
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calorie : NSObject

@property (nonatomic,strong) NSString* foodtype;
@property NSInteger calories;
@property (nonatomic,strong) NSString* ServingSize;
@property (nonatomic,strong) NSString* imageName;

@end
