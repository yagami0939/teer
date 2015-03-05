//
//  WYApi.m
//  wuyu
//
//  Created by YAGAMI on 15/3/6.
//  Copyright (c) 2015年 YAGAMI. All rights reserved.
//

#import "WYApi.h"
#import <RestKit.h>
#import "WYActivity.h"
#import <GHKit.h>
@implementation WYApi


+ (WYApi *)sharedInstance
{
    // 1
    static WYApi *_sharedInstance = nil;
    
    // 2
    static dispatch_once_t oncePredicate;
    
    // 3
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[WYApi alloc] init];
    });
    return _sharedInstance;
}

- (void)getHotActivities:(NSString *)city page:(NSInteger)page
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setValue:@"get_actlist" forKey:@"function_name"];
    [params setValue:@(page) forKey:@"search[page]"];
    if (city == nil) {
        city = @"全国";
    }
    NSDictionary *dict = [NSDictionary dictionaryWithObject:city forKey:@"activity_city"];
    [params setValue:[dict gh_toJSON:NSJSONWritingPrettyPrinted error:nil] forKey:@"json"];
    
    [[RKObjectManager sharedManager] getObjectsAtPath:@"/" parameters:params success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        
        NSLog(@"%@",mappingResult);
        
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    
    }];
}


@end
