//
//  ZCHallVC.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCHallVC.h"

@interface ZCHallVC ()

@end

@implementation ZCHallVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"CS50_activity_image" highImage:@"CS50_activity_image" target:self action:@selector(activity)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"Development" highImage:@"Development" target:self action:@selector(bonceAnimale)];
    
}

- (void)bonceAnimale
{
    NSLog(@"bounceAnimale");
}

- (void)activity
{
    NSLog(@"activity");
}

@end
