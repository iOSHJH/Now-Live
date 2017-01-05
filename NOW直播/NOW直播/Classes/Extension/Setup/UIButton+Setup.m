//
//  UIButton+Extension.m
//  链式编程
//
//  Created by WONG on 16/10/6.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import "UIButton+Setup.h"

@implementation UIButton (Setup)

- (UIButton *(^)(CGRect))j_frame {
    return ^(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

- (UIButton *(^)(NSString *))j_normalTitle {
    return ^(NSString *title) {
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))j_highlightedTitle {
    return ^(NSString *title) {
        [self setTitle:title forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))j_selectedTitle {
    return ^(NSString *title) {
        [self setTitle:title forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(UIImage *))j_normalImage {
    return ^(UIImage *image) {
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIImage *))j_highlightedImage {
    return ^(UIImage *image) {
        [self setImage:image forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(UIImage *))j_selectedImage {
    return ^(UIImage *image) {
        [self setImage:image forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(UIColor *))j_bgColor {
    return ^(UIColor *color) {
        [self setBackgroundColor:color];
        return self;
    };
}

- (UIButton *(^)(CGFloat))j_fontSize {
    return ^(CGFloat fontSize) {
        self.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        return self;
    };
}

- (UIButton *(^)(UIColor *))j_normalTitleColor {
    return ^(UIColor *color) {
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))j_highlightedTitleColor {
    return ^(UIColor *color) {
        [self setTitleColor:color forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(UIColor *))j_selectedTitleColor {
    return ^(UIColor *color) {
        [self setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}

- (void)j_makeButton:(void(^)(UIButton *button))block {
    block(self);
}

+ (UIButton *)j_makeButton:(void(^)(UIButton *button))block {
    UIButton *button = [[self alloc] init];
    block(button);
    return button;
}

@end













