//
//  AppDelegate.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/1.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "AppDelegate.h"
#import "ZCCustomTabBarViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:ZCScreenBounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[ZCCustomTabBarViewController alloc]init];
    [self.window makeKeyAndVisible];
    return YES;
}



@end
