//
//  ZCDownView.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/3.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCDownView.h"
#import "ZCDonwSubview.h"
#define ZCCrow 3 // 列号
#define ZCItemCount 6
@implementation ZCDownView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initSubView];
        //self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (void)initSubView
{
    for (NSInteger i=0; i<ZCItemCount; i++) {
        ZCDonwSubview *subView = [ZCDonwSubview downSubView];
        [self addSubview:subView];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat margin = 2;
    CGFloat subViewW = (self.width-(ZCCrow-1)*margin)/ZCCrow*1.0;
    CGFloat subViewH = subViewW;
    for (NSInteger i=0; i<self.subviews.count; i++) {
        ZCDonwSubview *subView = self.subviews[i];
        CGFloat row = i/ZCCrow;
        CGFloat crow = i%ZCCrow;
        subView.frame = CGRectMake((subViewW+margin)*crow,(subViewH+margin)*row, subViewW, subViewH);
    }
    self.height = subViewH*ZCItemCount/ZCCrow;
}


@end
