//
//  UIControl+Extension.h
//  runtime-demo
//
//  Created by WONG on 16/8/30.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (Extension)

// 可以用这个给重复点击加间隔
@property (nonatomic, assign) NSTimeInterval custom_acceptEventInterval;

@end
