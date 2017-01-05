//
//  TimerTool.h
//  SocketChat
//
//  Created by WONG on 2016/10/13.
//  Copyright © 2016年 yunshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimerTool : NSObject

///用NSDate日期倒计时
-(void)timerWithStratDate:(NSDate *)startDate finishDate:(NSDate *)finishDate completeBlock:(void (^)(NSInteger day,NSInteger hour,NSInteger minute,NSInteger second))completeBlock;

///用时间戳倒计时
-(void)timerWithStratTimeStamp:(long long)starTimeStamp finishTimeStamp:(long long)finishTimeStamp completeBlock:(void (^)(NSInteger day,NSInteger hour,NSInteger minute,NSInteger second))completeBlock;

///每秒走一次，回调block
-(void)timerWithPER_SECBlock:(void (^)())PER_SECBlock;

/***  每隔多少秒走一次*/
-(void)timerWithInterval:(CGFloat)interval PER_SECBlock:(void (^)())PER_SECBlock;

/***  主动销毁定时器*/
-(void)destoryTimer;

-(NSDate *)dateWithLongLong:(long long)longlongValue;

/***  将时间字符串（2016-8-11 12:05:00）转换为NSDate*/
- (NSDate *)serverDateStringToDate:(NSString *)string;

@end
