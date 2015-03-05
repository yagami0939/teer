//
//  WYApi.h
//  wuyu
//
//  Created by YAGAMI on 15/3/6.
//  Copyright (c) 2015年 YAGAMI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WYApi : NSObject


+ (WYApi *)sharedInstance;
- (void)getHotActivities:(NSString *)city page:(NSInteger)page;
@end
