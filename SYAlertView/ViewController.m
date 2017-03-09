//
//  ViewController.m
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import "ViewController.h"
#import "SYAlertView+Add.h"
#import "SYAlertViewGlobalConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [SYAlertViewGlobalConfig syav_setNormalOptBackgroundColor:@"FFFFFF"];
    [SYAlertViewGlobalConfig syav_setNormalOptHighlightBackgroundColor:@"D7D7D7"];
    [SYAlertViewGlobalConfig syav_setNormalOptTextColor:@"333333"];
}

- (IBAction)button0:(id)sender {
    [SYAlertView showAlertViewWithOptions:@[@"opt1", @"opt2"] withCallback:^(NSInteger index) {
        
    }];
}

- (IBAction)button1:(id)sender {
    
    [SYAlertView showAlertViewWithTitle:@"title" withContent:@"content" withOptions:@[@"opt1",@"opt2"] withCallback:^(NSInteger index) {
        
    }];
}
- (IBAction)button2:(id)sender {
    [SYAlertView showAlertViewWithTitle:@"title" withContent:@"content" withOptions:@[@"opt1"] withCallback:^(NSInteger index) {
        
    }];
}
- (IBAction)button3:(id)sender {
    [SYAlertView showAlertViewWithTitle:@"aaa" withContent:@"" withOptions:@[@"opt1"] isHiddenCancelOption:NO isAlwaysVisible:YES withCallback:^(NSInteger index) {
        
    }];
}

- (IBAction)clear:(id)sender {
    [SYAlertView closeAllAlertView];
}

@end
