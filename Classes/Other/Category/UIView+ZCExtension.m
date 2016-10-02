//
//  UIView+ZCExtension.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "UIView+ZCExtension.h"

@implementation UIView (ZCExtension)
- (void)setSize:(CGSize)size
{
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}
- (CGSize)size
{
    return self.frame.size;
}
@end
