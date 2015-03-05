//
//  WYActivity.h
//  wuyu
//
//  Created by YAGAMI on 15/3/5.
//  Copyright (c) 2015年 YAGAMI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    WYActivityStateNotStart,
    WYActivityStateOngoing,
    WYActivityStateFinish
} WYActivityState;

typedef enum {
    WYActivityQulityNew,
    WYActivityQulityOld
} WYActivityQulity;

@interface WYActivity : NSObject <NSCoding>

@property (nonatomic, copy) NSNumber *activity_id;
@property (nonatomic, copy) NSString *name;
@property (nonatomic) WYActivityQulity quality;
@property (nonatomic, copy) NSString *exchange;
@property (nonatomic) WYActivityState state;
@property (nonatomic, copy) NSDate *createTime;

@property (nonatomic, copy) NSNumber *attitude;
@property (nonatomic, copy) NSNumber *latitude;

@property (nonatomic, copy) NSNumber *joinNumber;
@property (nonatomic, copy) NSNumber *likeNumber;
@property (nonatomic, copy) NSNumber *replyNumber;
@property (nonatomic, copy) NSNumber *joinedNumber;

@property (nonatomic, copy) NSString *province;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *district;

@property (nonatomic, copy) NSArray *pictures;

@end
