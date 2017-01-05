//
//  PlayerTableViewCell.m
//  NOW直播
//
//  Created by WONG on 2016/12/30.
//  Copyright © 2016年 yunshi. All rights reserved.
//

#import "PlayerTableViewCell.h"
#import "PlayerModel.h"

@interface PlayerTableViewCell ()

@property (nonatomic, strong) UIButton * iconButton;
@property (nonatomic, strong) UILabel * nicknameLabel;
@property (nonatomic, strong) UILabel * addressLabel;
@property (nonatomic, strong) UILabel * seeNumLabel;
@property (nonatomic, strong) UIImageView * detailIV;

@end

@implementation PlayerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initUI];
        [self setter];
    }
    return self;
}

- (void)setter {
    [self.iconButton sd_setImageWithURL:nil forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"aa"]];
    self.nicknameLabel.text = @"我叫name";
    self.addressLabel.text = @"火星";
    self.seeNumLabel.text = @"99999在看";
    [self.detailIV sd_setImageWithURL:nil placeholderImage:[UIImage imageNamed:@"aa"]];
}

- (void)initUI {
    [self.contentView addSubview:self.iconButton];
    [self.iconButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.top.equalTo(@10);
        make.size.equalTo(@40);
    }];
    
    [self.contentView addSubview:self.nicknameLabel];
    [self.nicknameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconButton.mas_right).offset(10);
        make.top.equalTo(self.iconButton);
    }];
    
    [self.contentView addSubview:self.addressLabel];
    [self.addressLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.nicknameLabel);
        make.bottom.equalTo(self.iconButton);
    }];
    
    [self.contentView addSubview:self.seeNumLabel];
    [self.seeNumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(@-5);
        make.bottom.equalTo(self.addressLabel);
    }];
    
    [self.contentView addSubview:self.detailIV];
    [self.detailIV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.left.equalTo(self);
        make.top.equalTo(self.iconButton.mas_bottom).offset(5);
        make.size.equalTo(ScreenWidth);
    }];
}

#pragma mark - getter

- (UIButton *)iconButton {
    if (!_iconButton) {
        _iconButton = [UIButton new];
        _iconButton.layer.cornerRadius = 20;
        _iconButton.layer.masksToBounds = YES;
    }
    return _iconButton;
}

- (UILabel *)nicknameLabel {
    if (!_nicknameLabel) {
        _nicknameLabel = [UILabel new];
        _nicknameLabel.j_font(15).j_textColor(MainGrayColor);
    }
    return _nicknameLabel;
}

- (UILabel *)addressLabel {
    if (!_addressLabel) {
        _addressLabel = [UILabel new];
        _addressLabel.j_font(14).j_textColor(FrenchGrey1);
    }
    return _addressLabel;
}

- (UILabel *)seeNumLabel {
    if (!_seeNumLabel) {
        _seeNumLabel = [UILabel new];
        _seeNumLabel.j_font(13).j_textColor(FrenchGrey1);
    }
    return _seeNumLabel;
}

- (UIImageView *)detailIV {
    if (!_detailIV) {
        _detailIV = [UIImageView new];
    }
    return _detailIV;
}

#pragma mark - setter

- (void)setPlayerModel:(PlayerModel *)playerModel {
    _playerModel = playerModel;
    
    [self.iconButton sd_setImageWithURL:[NSURL URLWithString:playerModel.portrait] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"aa"]];
    [self.detailIV sd_setImageWithURL:[NSURL URLWithString:playerModel.portrait] placeholderImage:[UIImage imageNamed:@"aa"]];
    self.nicknameLabel.text = playerModel.name;
    if ([playerModel.city isEqualToString:@""]) {
        self.addressLabel.text = @"难道在火星?";
    }else{
        self.addressLabel.text = playerModel.city;
    }
    self.seeNumLabel.text = [NSString stringWithFormat:@"%d人在看",playerModel.online_users];
}

@end
