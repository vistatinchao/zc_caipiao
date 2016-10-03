//
//  NSString+ZCExtension.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/3.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "NSString+ZCExtension.h"

@implementation NSString (ZCExtension)

- (CGSize)stringWithFont:(UIFont *)fontSize fullSize:(CGSize)fullSize
{
   return  [self boundingRectWithSize:fullSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:fontSize} context:nil].size;
}

@end
