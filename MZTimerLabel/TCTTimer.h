//
//  TCTTimer.h
//  MZTimerLabelDemo
//
//  Created by Tracy-One on 15/6/18.
//  Copyright (c) 2015年 MineS Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TCTCountdownTimer.h"

typedef NS_ENUM(NSUInteger, TCTTimerCoreAccuracy) {
    TCTTimerCoreAccuracyNormal,
    TCTTimerCoreAccuracyHigh,
    TCTTimerCoreAccuracyHighest
};

@protocol TCTTimer <NSObject>

- (void)start;
- (void)pause;
- (void)reset;

@end

@protocol TCTCountdownTimerRefreshData <NSObject>

@property (nonatomic, assign) NSInteger *day;
@property (nonatomic, assign) NSInteger *hour;
@property (nonatomic, assign) NSInteger *minute;
@property (nonatomic, assign) NSInteger *second;
@property (nonatomic, assign) NSInteger *mSecond;

@end