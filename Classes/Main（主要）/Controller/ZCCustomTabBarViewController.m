//
//  ZCCustomTabBarViewController.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/1.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCCustomTabBarViewController.h"
#import "ZCCustomNavBarViewController.h"
#import "ZCArenaVC.h"
#import "ZCHelpVC.h"
#import "ZCHallVC.h"
#import "ZCHistoryVC.h"
#import "ZCDiscoverVC.h"
@interface ZCCustomTabBarViewController ()

@end

@implementation ZCCustomTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZCArenaVC *areVc = [[ZCArenaVC alloc]init];
    ZCHallVC *hallVC = [[ZCHallVC alloc]init];
    ZCHelpVC *helpVc= [[ZCHelpVC alloc]init];
    ZCDiscoverVC *discoverVc = [[ZCDiscoverVC alloc]init];
    ZCHistoryVC *historyVC = [[ZCHistoryVC alloc]init];
    [self tabBarAddChiliViewController:hallVC Image:@"TabBar_LotteryHall_new" SelectImage:@"TabBar_LotteryHall_selected_new" Title:@"购彩大厅"];
    [self tabBarAddChiliViewController:areVc Image:@"TabBar_Arena_new" SelectImage:@"TabBar_Arena_selected_new" Title:nil];
    [self tabBarAddChiliViewController:discoverVc Image:@"TabBar_Discovery_new" SelectImage:@"TabBar_Discovery_selected_new" Title:@"发现"];
    [self tabBarAddChiliViewController:historyVC Image:@"TabBar_History_new" SelectImage:@"TabBar_History_selected_new" Title:@"开奖信息"];
    [self tabBarAddChiliViewController:helpVc Image:@"TabBar_MyLottery_new" SelectImage:@"TabBar_MyLottery_selected_new" Title:@"我的彩票"];
    
}

- (void)tabBarAddChiliViewController :(UIViewController *)vc Image:(NSString *)image SelectImage:(NSString *)selectImage Title:(NSString *)title
{
    
    vc.view.backgroundColor = [UIColor redColor];
    ZCCustomNavBarViewController *nvc = [[ZCCustomNavBarViewController alloc]initWithRootViewController:vc];
    [self addChildViewController:nvc];
    vc.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.navigationItem.title = title;
    NSLog(@"%zd",self.viewControllers.count);

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%@-------%zd",self.viewControllers,self.viewControllers.count);
    
}

@end
