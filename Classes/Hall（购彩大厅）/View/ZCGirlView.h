//
//  ZCGirlView.h
//  zc_caipiao
//
//  Created by zouchao on 16/10/3.
//  Copyright © 2016年 zouchao. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^deleteBlock)();
@interface ZCGirlView : UIView
+(instancetype)girlView;
@property (nonatomic,copy)deleteBlock deleteBlock;
@end
