//
//  ThirdViewController.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ThirdViewController.h"


#define HEIGHT self.view.frame.size.height
#define WIDTH self.view.frame.size.width

@interface ThirdViewController () <UITableViewDelegate, UITableViewDataSource> {
    UITableView *mealtable;
    NSMutableArray *tempArray;
}

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.CalorieData1 =[[CalorieModel alloc]init];
     mealtable = [[UITableView alloc] initWithFrame:CGRectMake(0, HEIGHT*0.6, WIDTH, HEIGHT*0.9)
                                                           style:UITableViewStylePlain];
    mealtable.separatorColor = [UIColor clearColor];
    // then hide table
    mealtable.hidden = YES;
    mealtable.delegate = self;
    mealtable.dataSource=self;
    // self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"image2.jpg"]];
    
    // init the temp array to store food found
    tempArray = [[NSMutableArray alloc] initWithCapacity:0];
    
    // Do any additional setup after loading the view.
    
    // add the tableview to screen
    [self.view addSubview:mealtable];
    
    
    // change the background color...
    self.view.backgroundColor = [UIColor brownColor];
    // for a background image
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



#pragma mark -Methods to be implemented when the button is pressed
- (IBAction)Optionsbutton:(UIButton *)sender {
   //hides keyboard
   [ _CaloriesTextField resignFirstResponder];
   // show table to user
  mealtable.hidden = NO;
  // clear the array before the search
  [tempArray removeAllObjects];
  // Find the food with correct calories
  // first loop through the array of foods
  for (int i = 0; i < [self.CalorieData1.mealarray count]; i++) {
  Calorie *temp2 = [self.CalorieData1.mealarray objectAtIndex:i];
  // take the current food value at index
  int DesiredCalories = [self.CaloriesTextField.text intValue];
  //code to change the string in a text field to an integer value gotten from https://stackoverflow.com/questions/3787461/how-do-i-convert-a-string-into-an-integer-in-objective-c
   // take the value of the calorie in the text field
    if (DesiredCalories >= temp2.calories) {
    // check for the foods lower than the Desired Calories
    if(DesiredCalories>=2000){
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Warning"
                message:@"Please Enter A Valid Number"
                preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                handler:^(UIAlertAction * action) {}];
                [alert addAction:defaultAction];
                [self presentViewController:alert animated:YES completion:nil];
                mealtable.hidden=YES;
                //hide the table after the alert has come up.
            }
                NSLog(@"Food Found!");
                // NSLOG a found food
                [tempArray addObject:temp2];
                // Save the found food to a temp array
        }
    }
    
    [mealtable reloadData];                                             
    // Reload the table view after completion
    
  
}

    #pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger foodCount = [tempArray count];
    if ([tempArray count] > 3) {
        foodCount = 3;
    }
    return foodCount;
}

#pragma mark- Table view delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    if(indexPath.section==0){
        
        if ([tempArray count] > 0) {
            Calorie *food = [tempArray objectAtIndex:indexPath.row];
            NSString *combined = [NSString stringWithFormat:@"%@          %@", food.foodtype, food.ServingSize];
            cell.textLabel.text = combined;
            cell.backgroundColor=[UIColor whiteColor];
        }
        //Code to combine strings gotten from https://stackoverflow.com/questions/6948178/how-to-combine-two-strings-in-objective-c-for-an-iphone-app
        if ( indexPath.row % 2 == 0 )
            cell.backgroundColor = [UIColor brownColor];
    else
            cell.backgroundColor = [UIColor brownColor];
    }

return cell;
  
}
@end
