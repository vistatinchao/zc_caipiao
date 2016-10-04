//
//  ZCHallVC.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCHallVC.h"
#import "ZCGirlView.h"
#import "ZCDownView.h"
@interface ZCHallVC ()

@end

@implementation ZCHallVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNav];
    
  
}

- (void)initNav
{
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"CS50_activity_image" highImage:@"CS50_activity_image" target:self action:@selector(activity)];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTitle:nil image:@"Development" target:self action:@selector(bonceAnimale)];
}

- (void)bonceAnimale
{
    ZCDownView *downView = [[ZCDownView alloc]initWithFrame:CGRectMake(0, 64, ZCScreenW, 200)];
    [self.view addSubview:downView];
}

- (void)activity
{
    UIView *shandowView = [[UIView alloc]initWithFrame:ZCScreenBounds];
    [ZCKeyWindow addSubview:shandowView];
    
    shandowView.backgroundColor = [UIColor colorWithRed:102/255.0 green:102/255.0 blue:102/255.0 alpha:0.4];
    __weak ZCGirlView *girlView = [ZCGirlView girlView];
    [shandowView addSubview:girlView];
    girlView.size = CGSizeMake(200, 200);
    girlView.center = shandowView.center;
    girlView.deleteBlock = ^{
        [UIView animateWithDuration:1 animations:^{
            
            //        self.center = CGPointMake(44, 44);
            // 修改父类的frame，并不会影响里面子控件
            //        self.frame = CGRectMake(44, 44, 0, 0);
            
            // 利用自动布局解决了子控件随着父控件的尺寸改变而改变
            
            // 修改形变。如果直接缩放为0，父控件马上消失。
            
            CGAffineTransform transform = CGAffineTransformIdentity;
            
            transform = CGAffineTransformTranslate(transform, -girlView.center.x + 44, -girlView.center.y + 44);
            
            transform = CGAffineTransformScale(transform, 0.01, 0.01);
            
            
            girlView.transform = transform;
            
            
        } completion:^(BOOL finished) {
            
            [shandowView removeFromSuperview];
            
        }];

    };
    
}

@end
