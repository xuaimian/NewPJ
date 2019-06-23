//
//  ZWNavViewController.m
//  NewProject
//
//  Created by spring on 2019/6/23.
//  Copyright © 2019 spring. All rights reserved.
//

#import "ZWNavViewController.h"

@interface ZWNavViewController ()

@end

@implementation ZWNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationBar.backItem setTitle:@""];
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
