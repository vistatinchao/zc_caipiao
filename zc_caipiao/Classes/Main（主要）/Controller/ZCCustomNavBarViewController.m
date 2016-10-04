//
//  ZCCustomNavBarViewController.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/1.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCCustomNavBarViewController.h"

@interface ZCCustomNavBarViewController ()

@end

@implementation ZCCustomNavBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    NSMutableDictionary *titltDict = [NSMutableDictionary dictionary];
    titltDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    titltDict[NSFontAttributeName]= [UIFont systemFontOfSize:20];
    [self.navigationBar setTitleTextAttributes:titltDict];
}




@end
