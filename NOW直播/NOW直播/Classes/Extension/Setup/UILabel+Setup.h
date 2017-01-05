//
//  UILabel+Extention.h
//  链式编程
//
//  Created by WONG on 16/8/29.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Setup)

- (UILabel *(^)(CGRect rect))j_frame;

- (UILabel *(^)(NSString *text))j_text;

- (UILabel *(^)(CGFloat fs))j_font;

- (UILabel *(^)(UIColor *color))j_textColor;

- (UILabel *(^)(NSInteger))j_numberOfLines;

- (UILabel *(^)(UIColor *bgColor))j_backgroundColor;

- (UILabel *(^)(NSTextAlignment))j_textAlignment;

- (void)j_makeLabel:(void(^)(UILabel *label))block;

+ (UILabel *)j_makeLabel:(void(^)(UILabel *label))block;

@end
