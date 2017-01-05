//
//  UIView+Extention.h
//  链式编程
//
//  Created by WONG on 16/10/6.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Setup)

- (UIView *(^)(CGRect rect))j_frame;

- (UIView *(^)(UIColor *bgColor))j_backgroundColor;

- (UIView *(^)(NSInteger))j_tag;

- (UIView *(^)(BOOL))j_userInteractionEnabled;

- (UIView *(^)(BOOL))j_hidden;

- (void)j_makeView:(void(^)(UIView *view))block;

+ (UIView *)j_makeView:(void(^)(UIView *view))block;

@end
