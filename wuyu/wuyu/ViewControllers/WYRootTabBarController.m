//
//  WYRootTabBarController.m
//  wuyu
//
//  Created by YAGAMI on 15/3/5.
//  Copyright (c) 2015年 YAGAMI. All rights reserved.
//

#import "WYRootTabBarController.h"
#import "WYNavigationController.h"
#import "WYTestViewController.h"
@implementation WYRootTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:5];
    for (int i=0; i<5; i++) {
        WYNavigationController *nav = [[WYNavigationController alloc]initWithRootViewController:[WYTestViewController new]];
        [array addObject:nav];
    }
    
    [self setViewControllers:array];
    
}

@end
