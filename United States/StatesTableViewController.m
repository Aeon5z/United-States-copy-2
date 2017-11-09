//
//  StatesTableViewController.m
//  United States
//
//  Created by user on 11/1/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "StatesTableViewController.h"
#import "StateInfo.h"
#import "StatesTableViewCell.h"
#import "StateDetailViewController.h"

@interface StatesTableViewController ()
@property (strong, nonatomic) NSMutableArray *usStates;

@end

@implementation StatesTableViewController

- (void)viewDidLoad {
    self.tableView.backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"UnitedStatesBG"]];
    [super viewDidLoad];
    
    // path for plist
    NSString *pListPath = [[NSBundle mainBundle]pathForResource:@"UnitedStateList" ofType:@"plist"];
    NSDictionary *stateList = [[NSDictionary alloc]initWithContentsOfFile:pListPath];
    
    NSLog(@"%@" ,stateList );
   // self.stateName = [stateList objectForKey:@"StateName"];
   // NSLog(@"StateName: %@" , self.stateName);
    
   // NSArray *test = stateList[@"StateName"];
   //  NSLog(@"%@" , test);

    
   /* StateInfo *alabama = [[StateInfo alloc]init];
    alabama.name = @"Alabama";
    alabama.capital = @"Montgomery";
    alabama.motto = @"Audemu jura nosta defendere";
    alabama.flag = [UIImage imageNamed:@"Flags/Small/alabama-flag-small"];
    alabama.birdname = @"Northern Flicker";
    alabama.population = @"4,863,300";
    alabama.birdImage = [UIImage imageNamed:@"NorthernFlicker.jpeg"];
    
    
    StateInfo *georgia = [[StateInfo alloc]init];
    georgia.name = @"Georgia";
    georgia.capital = @"Atlanta";
    georgia.motto = @"Wisdom, Justice, Moderation";
    georgia.flag = [UIImage imageNamed:@"Flags/Small/georgia-flag-small"];
    georgia.birdname = @"Brown trasher";
    georgia.population = @"10,310,371";
    georgia.birdImage = [UIImage imageNamed:@"BrownTrasher.jpeg"];
    
    StateInfo *florida = [[StateInfo alloc]init];
    florida.name = @"Florida";
    florida.capital = @"Tallahasse";
    florida.motto = @"In God We Trust";
    florida.flag = [UIImage imageNamed:@"Flags/Small/florida-flag-small"];
    florida.birdname = @"Northern Mocking Bird";
    florida.population = @"20,612,439";
    florida.birdImage = [UIImage imageNamed:@"NorthernMockingBird.jpeg"];
    
    self.usStates = [NSMutableArray arrayWithObjects:alabama, georgia, florida, nil];*/
    
    
    
    
    
    

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
    return [self.usStates count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"StateCellIdentifier";
    StatesTableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    //populate
    StateInfo *item = [self.usStates objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor blueColor];
    cell.StateName.text = item.name;
    cell.StateMoto.text = item.motto;
    cell.Flagimage.image = item.flag;
    cell.StateMoto.textColor = [UIColor whiteColor];
    cell.StateName.textColor = [UIColor whiteColor];
    
    return cell;
    
}


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
    if ([[segue identifier]isEqualToString:@"showDetails"])  {
        StateDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        StateInfo *item = [self.usStates objectAtIndex:myIndexPath.row];
        detailVC.myStates = item;
        
        
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
