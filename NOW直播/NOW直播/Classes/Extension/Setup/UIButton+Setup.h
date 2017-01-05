//
//  UIButton+Extension.h
//  链式编程
//
//  Created by WONG on 16/10/6.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Setup)

- (UIButton *(^)(CGRect))j_frame;

- (UIButton *(^)(NSString *))j_normalTitle;

- (UIButton *(^)(NSString *))j_highlightedTitle;

- (UIButton *(^)(NSString *))j_selectedTitle;

- (UIButton *(^)(UIImage *))j_normalImage;

- (UIButton *(^)(UIImage *))j_highlightedImage;

- (UIButton *(^)(UIImage *))j_selectedImage;

- (UIButton *(^)(UIColor *))j_bgColor;

- (UIButton *(^)(CGFloat))j_fontSize;

- (UIButton *(^)(UIColor *))j_normalTitleColor;

- (UIButton *(^)(UIColor *))j_highlightedTitleColor;

- (UIButton *(^)(UIColor *))j_selectedTitleColor;

- (void)j_makeButton:(void(^)(UIButton *button))block;

+ (UIButton *)j_makeButton:(void(^)(UIButton *button))block;

@end
