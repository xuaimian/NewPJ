//
//  FirstViewController.m
//  NewProject
//
//  Created by spring on 2019/6/23.
//  Copyright © 2019 spring. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn_login;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"First";
    [self inishilizeUI];
    // Do any additional setup after loading the view from its nib.
}
-(void)inishilizeUI
{
    _btn_login.layer.cornerRadius = 10;
    _btn_login.layer.masksToBounds = true;
}
-(void)createUI
{
    
    UIView *firstStack = [[UIView alloc]initWithFrame:CGRectZero];
    firstStack.backgroundColor = [UIColor redColor];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:firstStack attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:20];
 
    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem:firstStack attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1 constant:20];
 
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:firstStack attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
   
     NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:firstStack attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:1 constant:20];
//    NSLayoutConstraint *width=[NSLayoutConstraint constraintWithItem:firstStack attribute:(NSLayoutAttributeWidth) relatedBy:(NSLayoutRelationEqual) toItem:self.view attribute:(NSLayoutAttributeWidth) multiplier:(1) constant:(20)];
    
  //  firstStack.constraints
    
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
