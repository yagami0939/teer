//
//  WYTestViewController.m
//  wuyu
//
//  Created by YAGAMI on 15/3/5.
//  Copyright (c) 2015年 YAGAMI. All rights reserved.
//

#import "WYTestViewController.h"

@implementation WYTestViewController


- (void)loadView
{
    [super loadView];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 20, 80, 20)];
    [self.view addSubview:label];
    [label setText:[NSString stringWithFormat:@"%@",self]];
}
@end
