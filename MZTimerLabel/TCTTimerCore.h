//
//  TCTTimerCore.h
//  MZTimerLabelDemo
//
//  Created by Tracy-One on 15/6/18.
//  Copyright (c) 2015年 MineS Chan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TCTTimer.h"

@interface TCTTimerCore : NSObject

- (instancetype)initWithAccuracy:(TCTTimerCoreAccuracy)accuracy target:(id)target selector:(SEL)selector NS_DESIGNATED_INITIALIZER;

- (void)start;

- (void)stop;

@end
