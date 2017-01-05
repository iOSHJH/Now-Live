//
//  MainBaseViewController.m
//  NOW直播
//
//  Created by WONG on 2016/12/30.
//  Copyright © 2016年 yunshi. All rights reserved.
//

#import "MainBaseViewController.h"

@interface MainBaseViewController ()

@end

@implementation MainBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"message"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarClick)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"personal"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBarClick)];
    
}

- (void)rightBarClick{
    
}
- (void)leftBarClick{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
