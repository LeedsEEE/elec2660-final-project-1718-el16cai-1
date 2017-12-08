//
//  CalorieModel.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CalorieModel.h"

@implementation CalorieModel
//Stores the different meals and their information in a mutable array
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
        
        self.mealarray=[NSMutableArray array];
        Calorie*CumberlandPie=[[Calorie alloc]init];
        CumberlandPie.foodtype=@"Cumberland Pie";
        CumberlandPie.calories=297;
        CumberlandPie.ServingSize=@"400g";
        CumberlandPie.imageName=@"cumberland1.jpg";//Diagram gotten from http://pinchofnom.com/recipes/half-syn-cumberland-pie-slimming-world/
        
        self.mealarray=[NSMutableArray array];
        Calorie*RoastBeefGravy=[[Calorie alloc]init];
        RoastBeefGravy.foodtype=@"Roast Beef and Gravy";
        RoastBeefGravy.calories=370;
        RoastBeefGravy.ServingSize=@"1 serving";
        RoastBeefGravy.imageName=@"RoastBeefgravy.jpeg"; //Diagram gotten from http://www.foodnetwork.com/recipes/trisha-yearwood/roast-beef-with-gravy-recipe-2109869
        
        self.mealarray=[NSMutableArray array];
        Calorie*ShepherdsPie=[[Calorie alloc]init];
        ShepherdsPie.foodtype=@"Shepherd's Pie";
        ShepherdsPie.calories=415;
        ShepherdsPie.ServingSize=@"340g";
        ShepherdsPie.imageName=@"ShepherdsPie.jpg"; //Diagram gotten from http://www.goodtoknow.co.uk/recipes/516422/mary-berry-s-shepherd-s-pie-dauphinois
        
        
        self.mealarray=[NSMutableArray array];
        Calorie*SteakandAlePie=[[Calorie alloc]init];
        SteakandAlePie.foodtype=@"Steak Ale and Pie";
        SteakandAlePie.calories=453;
        SteakandAlePie.ServingSize=@"1 serving";
        SteakandAlePie.imageName=@"steakaleandpie.jpg"; //Diagram gotten from https://www.cookstr.com/Beef-Recipes/Steak-and-Ale-Pie
        
        
        self.mealarray=[NSMutableArray array];
        Calorie*Lancashirehotpot=[[Calorie alloc]init];
        Lancashirehotpot.foodtype=@"Lancashire Hotpot";
        Lancashirehotpot.calories=100;
        Lancashirehotpot.ServingSize=@"1 serving";
        Lancashirehotpot.imageName=@"Lancashire hotpot.jpg"; //Diagram gotten from https://recipes.sainsburys.co.uk/recipes/main-courses/lancashire-hotpot
        
        
        self.mealarray=[NSMutableArray array];
        Calorie*Scotchegg=[[Calorie alloc]init];
        Scotchegg.foodtype=@"Scotch egg";
        Scotchegg.calories=241;
        Scotchegg.ServingSize=@"113g";
        Scotchegg.imageName=@"Scotchegg.jpg"; //Diagram gotten from https://www.saveur.com/article/Recipes/Classic-Scotch-Egg
        
        self.mealarray=[NSMutableArray array];
        Calorie*Cornishpasty=[[Calorie alloc]init];
        Cornishpasty.foodtype=@"Cornish Pasty";
        Cornishpasty.calories=400;
        Cornishpasty.ServingSize=@"1 Large";
        Cornishpasty.imageName=@"CornishPasty.jpg"; //Diagram gotten from http://www.goodtoknow.co.uk/recipes/497108/great-british-bake-off-cornish-pasties
        
        self.mealarray=[NSMutableArray array];
        Calorie*VictorianSponge=[[Calorie alloc]init];
        VictorianSponge.foodtype=@"Victorian Sponge Cake";
        VictorianSponge.calories=246;
        VictorianSponge.ServingSize=@"1 Serving";
        VictorianSponge.imageName=@"VictorianSponge.jpg"; //Diagram gotten from https://www.bbcgoodfood.com/recipes/1997/classic-victoria-sandwich
        
        self.mealarray=[NSMutableArray array];
        Calorie*peaandhamsoup=[[Calorie alloc]init];
        peaandhamsoup.foodtype=@"Pea and Ham Soup";
        peaandhamsoup.calories=108;
        peaandhamsoup.ServingSize=@"200g";
        peaandhamsoup.imageName=@"peaandhamsoup.jpeg"; //Diagram gotten from http://www.taste.com.au/recipes/slow-cooker-pea-ham-soup/5edb1d36-99a9-427d-a5af-94c205a11bf6
        
        self.mealarray=[NSMutableArray array];
        Calorie*ploughmanslunch=[[Calorie alloc]init];
        ploughmanslunch.foodtype=@"Ploughman's lunch";
        ploughmanslunch.calories=326;
        ploughmanslunch.ServingSize=@"100g";
        ploughmanslunch.imageName=@"ploughman.jpg"; //Diagram gotten from https://culinaryginger.com/ploughmans-lunch/
        
        self.mealarray=[NSMutableArray array];
        Calorie*prawncocktail=[[Calorie alloc]init];
        prawncocktail.foodtype=@"Prawn Cocktail";
        prawncocktail.calories=97;
        prawncocktail.ServingSize=@"199g";
        prawncocktail.imageName=@"prawncocktail.jpg"; //Diagram gotten from https://www.bbcgoodfood.com/recipes/4602/classic-prawn-cocktail
        
        self.mealarray=[NSMutableArray array];
        Calorie*vegetablestirfry=[[Calorie alloc]init];
        vegetablestirfry.foodtype=@"Vegetable Stir Fry";
        vegetablestirfry.calories=75;
        vegetablestirfry.ServingSize=@"150g";
        vegetablestirfry.imageName=@"vegetablestirfry.jpg"; //Image gotten from http://www.irunonnutrition.com/2014/06/11/quick-veggie-stir-fry-with-soba-noodles/
        
        self.mealarray=[NSMutableArray array];
        Calorie*applecrumble=[[Calorie alloc]init];
        applecrumble.foodtype=@"Apple Crumble";
        applecrumble.calories=283;
        applecrumble.ServingSize=@"1 Cut";
        applecrumble.imageName=@"applecrumble.jpg"; //Image gotten from https://bakeplaysmile.com/super-easy-apple-crumble/
        
        self.mealarray=[NSMutableArray array];
        Calorie*baconbutties=[[Calorie alloc]init];
        baconbutties.foodtype=@"Bacon Butty";
        baconbutties.calories=400;
        baconbutties.ServingSize=@"1 Sandwich";
        baconbutties.imageName=@"baconbutty.jpg"; //Image gotten from http://www.qreactive.com/en/work/dr-schar-by-qreactive.htm
        //All data concerning amount of calories and serving size gotten from https://www.myfitnesspal.com
        [self.mealarray addObject:applecrumble];
        [self.mealarray addObject:baconbutties];
        [self.mealarray addObject:ChickenTikkaMasala];
        [self.mealarray addObject:Cornishpasty];
        [self.mealarray addObject:Crumpets];
        [self.mealarray addObject:CumberlandPie];
        [self.mealarray addObject:FishChips];
        [self.mealarray addObject:Irishbangersmash];
        [self.mealarray addObject:Lancashirehotpot];
        [self.mealarray addObject:peaandhamsoup];
        [self.mealarray addObject:ploughmanslunch];
        [self.mealarray addObject:Porkpie];
        [self.mealarray addObject:prawncocktail];
        [self.mealarray addObject:RoastBeefGravy];
        [self.mealarray addObject:Scotchegg];
        [self.mealarray addObject:ShepherdsPie];
        [self.mealarray addObject:SteakandAlePie];
        [self.mealarray addObject:vegetablestirfry];
        [self.mealarray addObject:VictorianSponge];
        [self.mealarray addObject:YorkshirePudding];
        
}
    return self;
}
@end
