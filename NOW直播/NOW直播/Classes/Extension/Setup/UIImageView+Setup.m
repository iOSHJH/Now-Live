//
//  UIImageView+Setup.m
//  ehome
//
//  Created by WONG on 2016/11/18.
//  Copyright © 2016年 hongsui. All rights reserved.
//

#import "UIImageView+Setup.h"

@implementation UIImageView (Setup)

- (UIImageView *(^)(UIImage *))j_image {
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}

@end
