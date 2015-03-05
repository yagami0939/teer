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
#import <GHNSString+Utils.h>
@implementation WYRootTabBarController

- (id)init
{
    self = [super init];
    if (self) {
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:5];
        for (int i=0; i<5; i++) {
            
            WYTestViewController *controller = [[WYTestViewController alloc] init];
            controller.title = [NSString stringWithFormat:@"%d",i];
            
            WYNavigationController *nav = [[WYNavigationController alloc]initWithRootViewController:controller];
            controller.tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:i];
            [array addObject:nav];
        }
        
        [self setViewControllers:array];
    }
    return self;
}
@end
