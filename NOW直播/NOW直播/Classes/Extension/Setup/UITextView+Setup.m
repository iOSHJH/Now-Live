//
//  UITextView+Setup.m
//  SocketChat
//
//  Created by WONG on 2016/10/18.
//  Copyright © 2016年 yunshi. All rights reserved.
//

#import "UITextView+Setup.h"

@implementation UITextView (Setup)

- (UITextView *(^)(CGRect rect))j_frame {
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UITextView *(^)(NSString *text))j_text {
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(CGFloat fs))j_font {
    return ^(CGFloat fs){
        self.font = [UIFont systemFontOfSize:fs];
        return self;
    };
}

- (UITextView *(^)(UIColor *color))j_textColor {
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}

- (UITextView *(^)(UIColor *bgColor))j_backgroundColor {
    return ^(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
}

- (void)j_setupTextview:(void(^)(UITextView *label))block {
    block(self);
    NSLog(@"这里还可以对self 做一些事情哦");
}

+ (UITextView *)j_setupTextView:(void(^)(UITextView *))block {
    UITextView *textView = [[self alloc] init];
    block(textView);
    NSLog(@"这里还可以对self 做一些事情哦");
    return textView;
}



@end








