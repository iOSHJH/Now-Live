//
//  UITextField+Setup.m
//  ehome
//
//  Created by WONG on 2016/10/21.
//  Copyright © 2016年 hongsui. All rights reserved.
//

#import "UITextField+Setup.h"

@implementation UITextField (Setup)

- (UITextField *(^)(NSString *))j_placeholder {
    return ^(NSString *placeholder){
        self.placeholder = placeholder;
        return self;
    };
}


@end
