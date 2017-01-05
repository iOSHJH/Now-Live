//
//  EmoticonInputView.h
//  ehome
//
//  Created by WONG on 16/8/8.
//  Copyright © 2016年 hongsui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmoticonInputView : UIView

/***  输入框*/
@property (nonatomic,strong) UITextView *textView;
/***  点击发送 text：评论内容*/
@property (nonatomic,copy) void(^sendBlock)(NSString *content);

@end
