//
//  UIImage+Scale.h
//  ehome
//
//  Created by WONG on 16/10/8.
//  Copyright © 2016年 hongsui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)

//图片缩放到指定大小尺寸
- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;

//等比例缩放到iPhone屏幕大小
- (UIImage *)scaleToSize:(UIImage *)img;

/***  将图片等比缩放到宽度等于屏幕的宽度*/
+ (CGSize)scaleSize:(UIImage *)image;


@end
