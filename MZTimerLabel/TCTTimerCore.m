//
//  TCTTimerCore.m
//  MZTimerLabelDemo
//
//  Created by Tracy-One on 15/6/18.
//  Copyright (c) 2015年 MineS Chan. All rights reserved.
//

#import "TCTTimerCore.h"

static inline NSTimeInterval TCT_TimeIntervalFromAccuracy(TCTTimerCoreAccuracy accuracy){
    
    switch (accuracy) {
        case TCTTimerCoreAccuracyNormal:
            return 1;
            break;
        case TCTTimerCoreAccuracyHigh:
            return 0.1;
            break;
        case TCTTimerCoreAccuracyHighest:
            return 0.01;
            break;
        default:
            return 1;
            break;
    }
    
}

@interface TCTTimerCore ()

@property (nonatomic, strong) NSTimer *timer;

@property (nonatomic, assign) TCTTimerCoreAccuracy accuracy;
@property (nonatomic, weak) id target;
@property (nonatomic, assign) SEL selector;

@end

@implementation TCTTimerCore

#pragma mark - life circle
- (instancetype)initWithAccuracy:(TCTTimerCoreAccuracy)accuracy target:(id)target selector:(SEL)selector{
    if (self = [super init]) {
        self.accuracy = accuracy;
        self.target = target;
        self.selector = selector;
    }
    
    return self;
}

#pragma mark - public

- (void)start{
    
    if (self.timer) {
        [self.timer invalidate];
        self.timer = nil;
    }
    
    self.timer = [NSTimer timerWithTimeInterval:TCT_TimeIntervalFromAccuracy(self.accuracy) target:self.target selector:self.selector userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
        
        
}

- (void)stop{
    if (self.timer) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

@end
