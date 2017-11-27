//
//  CalorieModel.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CalorieModel.h"

@implementation CalorieModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mealarray=[NSMutableArray array];
        Calorie*YorkshirePudding=[[Calorie alloc]init];
        YorkshirePudding.foodtype=@"Yorkshire Pudding";
        YorkshirePudding.calories=80;
        YorkshirePudding.ServingSize=@"1 serving";
    YorkshirePudding.imageName=@"YorkshirePudding.jpg";// Diagram gotten from http://www.udontalk.com/forum/viewtopic.php?t=9406
        
        self.mealarray=[NSMutableArray array];
        Calorie*ChickenTikkaMasala=[[Calorie alloc]init];
        ChickenTikkaMasala.foodtype=@"Chicken Tikka Masala";
        ChickenTikkaMasala.calories=1206;//gotten fom myfitnesspal.com
        ChickenTikkaMasala.ServingSize=@"1 serving";
        ChickenTikkaMasala.imageName=@"ChickenTikkaMasala.jpg";// Diagram gotten from https://commons.wikimedia.org/wiki/File:Butter_Chicken_0000x0000_0.jpg/viewtopic.php?t=9406
        
        self.mealarray=[NSMutableArray array];
        Calorie*FishChips=[[Calorie alloc]init];
        FishChips.foodtype=@"Fish & Chips";
        FishChips.calories=412;
        FishChips.ServingSize=@"1 serving";
        FishChips.imageName=@"Fish&Chips.png";// Diagram gotten from http://www.oceaninn.co.uk/drink/fish-chips/
        
        self.mealarray=[NSMutableArray array];
        Calorie*Irishbangersmash=[[Calorie alloc]init];
        Irishbangersmash.foodtype=@"Irish Bangers & Mash";
        Irishbangersmash.calories=852;
        Irishbangersmash.ServingSize=@"1 meal";
        Irishbangersmash.imageName=@"IrishBangersandmash.jpg"; // Diagram gotten from https://www.muscleandfitness.com/nutrition/healthy-recipes/irish-style-guinness-bangers-mash-recipe
        
        self.mealarray=[NSMutableArray array];
        Calorie*Crumpets=[[Calorie alloc]init];
        Crumpets.foodtype=@"Crumpets";
        Crumpets.calories=627;
        Crumpets.ServingSize=@"1 serving";
        Crumpets.imageName=@"Crumpets.jpeg";// Diagram gotten from http://www.cookingchanneltv.com/recipes/packages/best-international-recipes-global-and-cooking/photos/british-food-and-recipes
        
        self.mealarray=[NSMutableArray array];
        Calorie*Porkpie=[[Calorie alloc]init];
        Porkpie.foodtype=@"Pork Pie";
        Porkpie.calories=920;
        Porkpie.ServingSize=@"1 serving";
        Porkpie.imageName=@"porkpie.jpg";// Diagram gotten from http://www.mrskingsporkpies.co.uk/our_pies/our_pies.php
        
        [self.mealarray addObject:YorkshirePudding];
        [self.mealarray addObject:ChickenTikkaMasala];
        [self.mealarray addObject:FishChips];
        [self.mealarray addObject:Irishbangersmash];
        [self.mealarray addObject:Crumpets];
        [self.mealarray addObject:Porkpie];
      
        
        
        
        
        
        
    }
    return self;
}
@end
