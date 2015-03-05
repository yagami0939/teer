//
//  WYTestViewController.m
//  wuyu
//
//  Created by YAGAMI on 15/3/5.
//  Copyright (c) 2015年 YAGAMI. All rights reserved.
//

#import "WYTestViewController.h"
#import <Masonry/Masonry.h>
#import "WYApi.h"
@implementation WYTestViewController


- (void)loadView
{
    [super loadView];
    

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *label = [[UIButton alloc]init];
    [self.view addSubview:label];
    
    
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(50, 20, 50, 20));
    }];
    label.backgroundColor = [UIColor redColor];
    [label setTitle:@"test" forState:UIControlStateNormal];
    [label addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)test:(id)sender
{
    [[WYApi sharedInstance] getHotActivities:nil page:0];
}
@end
