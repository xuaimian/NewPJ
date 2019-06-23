//
//  ZWTabViewController.m
//  NewProject
//
//  Created by spring on 2019/6/23.
//  Copyright © 2019 spring. All rights reserved.
//

#import "ZWTabViewController.h"
#import "ZWNavViewController.h"
#import "FirstViewController.h"
#import "SecondTableViewController.h"
#import "ThirdViewController.h"
@interface ZWTabViewController ()
//@property (weak, nonatomic) IBOutlet UITabBarItem *firstItem;
//@property (weak, nonatomic) IBOutlet UITabBarItem *secondItem;
//@property (weak, nonatomic) IBOutlet UITabBarItem *thirdItem;

@end

@implementation ZWTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpSubViews];
    [self setUpTabBarItems];
    // Do any additional setup after loading the view from its nib.
}
-(void)setUpSubViews
{
    FirstViewController *item1 = [[FirstViewController alloc]initWithNibName:@"FirstViewController" bundle:nil];
    SecondTableViewController *item2 = [[SecondTableViewController alloc]initWithStyle:UITableViewStylePlain];//[[SecondTableViewController alloc]initWithNibName:@"SecondTableViewController" bundle:nil];
    ThirdViewController *item3 = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
    ZWNavViewController *firstNav = [[ZWNavViewController alloc]initWithRootViewController:item1];
      ZWNavViewController *secondNav = [[ZWNavViewController alloc]initWithRootViewController:item2];
      ZWNavViewController *thirdNav = [[ZWNavViewController alloc]initWithRootViewController:item3];
    firstNav.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"First" image:nil tag:0];
    secondNav.tabBarItem =[[UITabBarItem alloc]initWithTitle:@"Second" image:nil tag:1];;
    thirdNav.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"Third" image:nil tag:2];;
    self.viewControllers = @[firstNav,secondNav,thirdNav];
    self.selectedIndex = 1;
}
-(void)setUpTabBarItems
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    
    NSMutableDictionary *attrs2 = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor redColor];
    

    [[UITabBarItem appearance]setTitleTextAttributes:attrs forState:UIControlStateNormal];
      [[UITabBarItem appearance]setTitleTextAttributes:attrs2 forState:UIControlStateSelected];
    
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
