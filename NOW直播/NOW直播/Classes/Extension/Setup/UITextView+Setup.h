//
//  UITextView+Setup.h
//  SocketChat
//
//  Created by WONG on 2016/10/18.
//  Copyright © 2016年 yunshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (Setup)

- (UITextView *(^)(CGRect rect))j_frame;

- (UITextView *(^)(NSString *text))j_text;

- (UITextView *(^)(CGFloat fs))j_font;

- (UITextView *(^)(UIColor *color))j_textColor;

- (UITextView *(^)(UIColor *bgColor))j_backgroundColor;

- (void)j_setupTextview:(void(^)(UITextView *label))block;

+ (UITextView *)j_setupTextView:(void(^)(UITextView *))block;

@end
