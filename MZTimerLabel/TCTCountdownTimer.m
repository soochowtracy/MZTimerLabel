//
//  TCTCountdownTimer.m
//  MZTimerLabelDemo
//
//  Created by Tracy-One on 15/6/18.
//  Copyright (c) 2015年 MineS Chan. All rights reserved.
//

#import "TCTCountdownTimer.h"

#import "TCTTimerCore.h"

@interface TCTCountdownTimer ()

@property (nonatomic, strong) TCTTimerCore *timer;

@end

@implementation TCTCountdownTimer

#pragma mark - life circle

- (instancetype)initWithAccuracy:(TCTTimerCoreAccuracy)accuracy countdownTimeInterval:(NSTimeInterval)timeInterval{
    if (self = [super init]) {
        self.timer = [[TCTTimerCore alloc] initWithAccuracy:accuracy target:self selector:@selector(timeRefresh)];
        
    }
    
    return self;
}

#pragma mark - public

- (void)start{
    [self.timer start];
}

- (void)pause{
    [self.timer stop];
}

- (void)reset{
    
}

#pragma mark - private

- (void)timeRefresh{
    
}

@end
