//
//  UIImage+Scale.m
//  ehome
//
//  Created by WONG on 16/10/8.
//  Copyright © 2016年 hongsui. All rights reserved.
//

#import "UIImage+Scale.h"

@implementation UIImage (Scale)

//图片缩放到指定大小尺寸
- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}

//将图片等比缩放到宽度等于屏幕的宽度
- (UIImage *)scaleToSize:(UIImage *)img{
    // 新的高度 / 新的宽度 = 旧的高度 / 旧的宽度
    // 新的高度 = 新的宽度(屏幕的宽度) * 旧的高度 / 旧的宽度
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = width * img.size.height / img.size.width;
    
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(CGSizeMake(width, height));
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, width, height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}

// 将图片等比缩放到宽度等于屏幕的宽度
+ (CGSize)scaleSize:(UIImage *)image {
    if (!image) {
        return CGSizeMake(0, 0);
    }
    // 新的高度 / 新的宽度 = 旧的高度 / 旧的宽度
    // 新的高度 = 新的宽度(屏幕的宽度) * 旧的高度 / 旧的宽度
    CGFloat newWidth = ScreenWidth;
    CGFloat newHeight = newWidth * image.size.height / image.size.width;
    
    return CGSizeMake(newWidth, newHeight);
}


@end
