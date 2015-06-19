//
//  TCTCountdownTimer.h
//  MZTimerLabelDemo
//
//  Created by Tracy-One on 15/6/18.
//  Copyright (c) 2015年 MineS Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TCTTimer.h"

@class TCTCountdownTimer;
@protocol TCTCountdownTimerDelegate <NSObject>

- (void)countdownTimer:(TCTCountdownTimer *)countdownTimer refreshWith

@end

@interface TCTCountdownTimer : NSObject<TCTTimer>

- (instancetype)initWithAccuracy:(TCTTimerCoreAccuracy)accuracy countdownTimeInterval:(NSTimeInterval)timeInterval;

@end
