//
//  UIView+Extention.m
//  链式编程
//
//  Created by WONG on 16/10/6.
//  Copyright © 2016年 cheuhui. All rights reserved.
//

#import "UIView+Setup.h"

@implementation UIView (Setup)

- (UIView *(^)(CGRect rect))j_frame {
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

- (UIView *(^)(UIColor *bgColor))j_backgroundColor {
    return ^(UIColor *bgColor){
        self.backgroundColor = bgColor;
        return self;
    };
}

- (UIView *(^)(NSInteger))j_tag {
    return ^(NSInteger i){
        self.tag = i;
        return self;
    };
}

- (UIView *(^)(BOOL))j_userInteractionEnabled {
    return ^(BOOL is){
        self.userInteractionEnabled = is;
        return self;
    };
}

- (UIView *(^)(BOOL))j_hidden {
    return ^(BOOL is){
        self.hidden = is;
        return self;
    };
}

- (void)j_makeView:(void(^)(UIView *view))block {
    block(self);
    NSLog(@"这里还可以对self 做一些事情哦");
}

+ (UIView *)j_makeView:(void(^)(UIView *view))block {
    UIView *view = [[self alloc] init];
    block(view);
    NSLog(@"这里还可以对self 做一些事情哦");
    return view;
}

@end
