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
     mealtable = [[UITableView alloc] initWithFrame:CGRectMake(0, HEIGHT*0.5, WIDTH, HEIGHT*0.5)
                                                           style:UITableViewStylePlain];
    mealtable.separatorColor = [UIColor clearColor];
    // then hide table
    mealtable.hidden = YES;
    mealtable.delegate = self;
    mealtable.dataSource=self;
    
    // init the temp array to store food found
    tempArray = [[NSMutableArray alloc] initWithCapacity:0];
    
    // Do any additional setup after loading the view.
    
    // add the tableview to screen
    [self.view addSubview:mealtable];
    
    
    // change the background color...
    //self.view.backgroundColor = [UIColor colorWithRed:(1/255) green:(1/255) blue:(1/255) alpha:1];
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




- (IBAction)Optionsbutton:(UIButton *)sender {
//hides keyboard from showing
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
        int RollNumber = [self.CaloriesTextField.text intValue];
        // take the value of the calorie in the text field
        if (RollNumber >= temp2.calories) {
            // check for the foods lower than the roll number
            if(RollNumber>=2000){
                UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Warning"
                        message:@"That Number Is Invalid."
                    preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
            handler:^(UIAlertAction * action) {}];
                
                [alert addAction:defaultAction];
                [self presentViewController:alert animated:YES completion:nil];
                mealtable.hidden=YES;
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

//UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ROFL"
                                              //  message:@"Dee dee doo doo."
                                              // delegate:self
                                      //cancelButtonTitle:@"OK"
                                      //otherButtonTitles:nil];
//[alert show];
//\*  https://stackoverflow.com/questions/4463806/adding-a-simple-uialertview
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
            //cell.detailTextLabel.text=food.ServingSize;
        }
        //Code to combine strings gotten from https://stackoverflow.com/questions/6948178/how-to-combine-two-strings-in-objective-c-for-an-iphone-app
        if ( indexPath.row % 2 == 0 )
            cell.backgroundColor = [UIColor whiteColor];
        else
            cell.backgroundColor = [UIColor lightGrayColor];
    }

return cell;
  
}




    




@end
