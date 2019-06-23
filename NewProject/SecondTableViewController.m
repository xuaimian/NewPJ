//
//  SecondTableViewController.m
//  NewProject
//
//  Created by spring on 2019/6/23.
//  Copyright © 2019 spring. All rights reserved.
//

#import "SecondTableViewController.h"
#import "ThirdViewController.h"
@interface SecondTableViewController ()
@property(nonatomic,strong)NSArray *dataSource;
@end

@implementation SecondTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Second";
    static NSString * reuseNormalCell = @"normalCell";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseNormalCell];
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc]init];
    [refreshControl addTarget:self action:@selector(refreshAction:) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)refreshAction:(UIRefreshControl *)control
{
    _dataSource = @[@"3",@"4",@"5"];
    [self.tableView reloadData];
    [self.refreshControl performSelector:@selector(endRefreshing) withObject:nil afterDelay:4];
}
-(NSArray *)dataSource{
    if (!_dataSource) {
        _dataSource = @[@"1",@"2",@"3"];
    }
    return _dataSource;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString * reuseNormalCell = @"normalCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseNormalCell forIndexPath:indexPath];
//    if (cell == nil)
//    {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseNormalCell];
//    }
    NSString *title = [self dataSource][indexPath.row];
    [cell.textLabel setText:title];
    
    // Configure the cell...
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 40;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView * header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    [header setBackgroundColor:[UIColor purpleColor]];
    UILabel *lb1 = [[UILabel alloc]initWithFrame:header.bounds];
    [lb1 setText:@"我是header"];
    [header addSubview:lb1];
    return header;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView * header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    [header setBackgroundColor:[UIColor purpleColor]];
    UILabel *lb1 = [[UILabel alloc]initWithFrame:header.bounds];
    [lb1 setText:@"我是footer"];
    [header addSubview:lb1];
    return header;
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


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    ThirdViewController *detailViewController = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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
