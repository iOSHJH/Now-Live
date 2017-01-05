//
//  EmoticonInputView.m
//  ehome
//
//  Created by WONG on 16/8/8.
//  Copyright © 2016年 hongsui. All rights reserved.
//

#import "EmoticonInputView.h"

@interface EmoticonInputView ()

/***  表情图标*/
@property (nonatomic,strong) UIButton *emoticonButton;
/***  发送按钮*/
@property (nonatomic,strong) UIButton *sendButton;

@end

@implementation EmoticonInputView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self prepareUI];
    }
    return self;
}

- (void)prepareUI {
    [self addSubview:self.emoticonButton];
    [self addSubview:self.textView];
    [self addSubview:self.sendButton];
    
    [self.emoticonButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@15);
        make.centerY.equalTo(self);
    }];
    [self.sendButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-7);
        make.centerY.equalTo(self);
        make.width.equalTo(@50);
    }];
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.emoticonButton.mas_right).offset(15);
//        make.left.equalTo(self).offset(10);
        make.right.mas_equalTo(self.sendButton.mas_left).offset(-7);
        make.top.equalTo(@5);
        make.bottom.mas_equalTo(-5);
    }];
}

- (void)sendClick {
    if (self.sendBlock) {
        self.sendBlock(self.textView.text);
    }
}

#pragma mark - lazy load

- (UIButton *)emoticonButton {
    if (!_emoticonButton) {
        _emoticonButton = [UIButton new];
        [_emoticonButton setImage:[UIImage imageNamed:@"faceicon"] forState:UIControlStateNormal];
    }
    return _emoticonButton;
}

- (UITextView *)textView {
    if (!_textView) {
        _textView = [UITextView new];
        _textView.backgroundColor = [UIColor whiteColor];
        _textView.layer.cornerRadius = 5;
    }
    return _textView;
}

- (UIButton *)sendButton {
    if (!_sendButton) {
        _sendButton = [UIButton new];
        [_sendButton setBackgroundColor:YellowColor];
        [_sendButton setTitle:@"发送" forState:UIControlStateNormal];
        [_sendButton setTitleColor:MainGrayColor forState:UIControlStateNormal];
        _sendButton.layer.cornerRadius = 5;
        [_sendButton addTarget:self action:@selector(sendClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sendButton;
}



@end

