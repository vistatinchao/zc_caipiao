//
//  UIBarButtonItem+ZCExtension.h
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ZCExtension)
+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
+(instancetype)itemWithTitle:(NSString *)title image:(NSString *)image target:(id)target action:(SEL)action;

@end
