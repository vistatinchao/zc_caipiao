//
//  ZCDonwSubview.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/3.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCDonwSubview.h"

@implementation ZCDonwSubview
+(instancetype)downSubView
{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
}
@end
