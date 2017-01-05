//
//  UILabel+Extention.m
//  链式编程
//
//  Created by WONG on 16/8/29.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import "UILabel+Setup.h"

@implementation UILabel (Setup)

- (UILabel *(^)(CGRect rect))j_frame {
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UILabel *(^)(NSString *text))j_text {
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(CGFloat fs))j_font {
    return ^(CGFloat fs){
        self.font = [UIFont systemFontOfSize:fs];
        return self;
    };
}

- (UILabel *(^)(UIColor *color))j_textColor {
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(NSInteger))j_numberOfLines {
    return ^(NSInteger i){
        self.numberOfLines = i;
        return self;
    };
}

- (UILabel *(^)(UIColor *bgColor))j_backgroundColor {
    return ^(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))j_textAlignment {
    return ^(NSTextAlignment ta){
        self.textAlignment = ta;
        return self;
    };
}

- (void)j_makeLabel:(void(^)(UILabel *label))block {
    block(self);
    NSLog(@"这里还可以对self 做一些事情哦");
}

+ (UILabel *)j_makeLabel:(void(^)(UILabel *label))block {
    UILabel *label = [[self alloc] init];
    block(label);
    NSLog(@"这里还可以对self 做一些事情哦");
    return label;
}




@end
























