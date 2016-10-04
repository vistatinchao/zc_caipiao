//
//  ZCHelpVC.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCHelpVC.h"

@interface ZCHelpVC ()

@end

@implementation ZCHelpVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNav];
}

- (void)initNav
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTitle:@"客服" image: @"FBMM_Barbutton" target:self action:@selector(service)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"Mylottery_config" highImage:nil target:self action:@selector(setup)];
    
}

- (void)service
{
    ZCLogFunc;
}


- (void)setup
{
    ZCLogFunc;
}
@end
