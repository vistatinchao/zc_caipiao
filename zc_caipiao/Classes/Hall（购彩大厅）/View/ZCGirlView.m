//
//  ZCGirlView.m
//  zc_caipiao
//
//  Created by zouchao on 16/10/3.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import "ZCGirlView.h"

@implementation ZCGirlView
+(instancetype)girlView
{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:self options:nil]lastObject];
}
- (IBAction)dismiss:(id)sender {
    if (self.deleteBlock) {
        self.deleteBlock();
    }
}

@end
