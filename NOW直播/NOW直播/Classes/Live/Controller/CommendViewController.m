//
//  CommendViewController.m
//  NOW直播
//
//  Created by WONG on 2016/12/30.
//  Copyright © 2016年 yunshi. All rights reserved.
//

#import "CommendViewController.h"
#import "PlayerTableViewCell.h"
#import "PlayerModel.h"
#import "PlayerViewController.h"

@interface CommendViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView * tableView;

@property (nonatomic, strong) NSArray * playerModels;

@end

static NSString * const PlayerTableViewCellIdentifier = @"PlayerTableViewCellIdentifier";

@implementation CommendViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    
    /***  下拉加载最新*/
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        NSString *url = @"http://service.inke.com/api/live/aggregation?imsi=&uid=147970465&proto=6&idfa=3EDE83E7-9CD1-4186-9F37-EE77B7423265&lc=0000000000000027&cc=TG0001&imei=&sid=20tJHn0JsxdmOGkbNjpEjo3DIKFyoyboTrCjMvP7zNxofi1QNXT&cv=IK3.2.00_Iphone&devi=134a83cdf2e6701fa8f85c099c5e68ac3ea7bd4b&conn=Wifi&ua=iPhone%205s&idfv=5CCB6FE7-1F0F-4288-90DC-946D6F6C45C2&osversion=ios_9.300000&interest=1&location=0";
        [PPNetworkHelper GET:url parameters:nil responseCache:^(id responseCache) {
            
        } success:^(id responseObject) {
            [self.tableView.mj_header endRefreshing];
            
            NSMutableArray *arr = [NSMutableArray array];
            for (NSDictionary *dic in responseObject[@"lives"]) {
                PlayerModel *playerModel = [[PlayerModel alloc] initWithDictionary:dic];
                playerModel.city = dic[@"city"];
                playerModel.portrait = dic[@"creator"][@"portrait"];
                playerModel.name = dic[@"creator"][@"nick"];
                playerModel.online_users = [dic[@"online_users"] intValue];
                playerModel.url = dic[@"stream_addr"];
                
                [arr addObject:playerModel];
            }
            self.playerModels = arr;
            
        } failure:^(NSError *error) {
            [self.tableView.mj_header endRefreshing];
        }];
    }];
    [self.tableView.mj_header beginRefreshing];
    /***  上拉加载更多*/
//    self.tableView.mj_footer = [MJRefreshAutoGifFooter footerWithRefreshingBlock:^{
//    
//    }];
}

- (void)viewWillAppear:(BOOL)animated {}
- (void)didReceiveMemoryWarning {}
- (void)dealloc {}

#pragma mark - Public Methods



#pragma mark - Private Methods



#pragma mark - UITableViewDataSource,UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.playerModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlayerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:PlayerTableViewCellIdentifier];
    if (!cell) {
        cell = [[PlayerTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:PlayerTableViewCellIdentifier];
    }
    cell.playerModel = self.playerModels[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 469;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    PlayerViewController * playerVc = [[PlayerViewController alloc] init];
    PlayerModel * PlayerModel = self.playerModels[indexPath.row];
    playerVc.liveUrl = PlayerModel.url;
    playerVc.imageUrl = PlayerModel.portrait;
    [self.navigationController pushViewController:playerVc animated:true];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}



#pragma mark - Getter

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}


#pragma mark - Setter

- (void)setPlayerModels:(NSArray *)playerModels {
    _playerModels = playerModels;
    
    [self.tableView reloadData];
}


@end
