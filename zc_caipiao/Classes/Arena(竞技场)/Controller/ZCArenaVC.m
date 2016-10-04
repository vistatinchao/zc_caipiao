//
//  ZCArenaVC.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCArenaVC.h"

@interface ZCArenaVC ()

@end

@implementation ZCArenaVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self initNav];
   
}

- (void)initNav
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"NLArenaNavBar64"] forBarMetrics:UIBarMetricsDefault];
    UISegmentedControl *titleView = [[UISegmentedControl alloc]initWithItems:@[@"足球",@"篮球"]];
    titleView.size = CGSizeMake(100, 30);
    titleView.apportionsSegmentWidthsByContent = YES;
    [titleView setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentBG"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [titleView setBackgroundImage:[UIImage imageNamed:@"CPArenaSegmentSelectedBG"] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    self.navigationItem.titleView = titleView;
}

@end
