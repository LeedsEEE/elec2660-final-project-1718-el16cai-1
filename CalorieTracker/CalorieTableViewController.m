//
//  CalorieTableViewController.m
//  CalorieTracker
//
//  Created by Chigozirim Ibeabuchi on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "CalorieTableViewController.h"

@interface CalorieTableViewController ()

@end

@implementation CalorieTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.CalorieData =[[CalorieModel alloc]init]; //initialise the object in viewdidload
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  NSInteger numberofRows = 0;
    if (section==0) {
        numberofRows = self.CalorieData.mealarray.count;
  
    }
      return numberofRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FoodCell" forIndexPath:indexPath];
    if(indexPath.section==0){
        Calorie *tempCalorie=[self.CalorieData.mealarray objectAtIndex:indexPath.row];
        cell.textLabel.text=tempCalorie.foodtype;
    
        if ( indexPath.row % 2 == 0 )
            
        cell.textLabel.textColor = [UIColor blackColor];
        else
            
        cell.textLabel.textColor = [UIColor whiteColor];
        
        if ( indexPath.row % 2 == 0 )
            cell.backgroundColor = [UIColor whiteColor];
        else
            cell.backgroundColor = [UIColor blackColor];
        // Code to change background colour gotten from https://stackoverflow.com/questions/24743184/uitableview-set-background-color
        // Code to change text colour gotten from https://stackoverflow.com/questions/3930968/how-to-change-the-color-of-the-text-present-in-table-view-from-its-default-black
       
    // Configure the cell...
    }
    return cell;
}
// Changing the cell's identifier to FoodCell

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"ShowFoodDetails"]) {
        
        SecondViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath= [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            Calorie *tempCalorie= [self.CalorieData.mealarray objectAtIndex:indexPath.row];
            destinationViewController.calorie= tempCalorie;
        }
}
}

@end
