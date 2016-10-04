//
//  UIBarButtonItem+ZCExtension.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/2.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "UIBarButtonItem+ZCExtension.h"

@implementation UIBarButtonItem (ZCExtension)

+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    //[button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];
}

+(instancetype)itemWithTitle:(NSString *)title image:(NSString *)image target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    //[button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentImage.size;
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    button.width = button.width+[title stringWithFont:button.titleLabel.font fullSize:CGSizeMake(MAXFLOAT, MAXFLOAT)].width;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:button];

}


@end
