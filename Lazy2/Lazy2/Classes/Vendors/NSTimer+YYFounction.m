//
//  NSTimer+YYFounction.m
//  ViewController
//
//  Created by yinqijie on 16/3/30.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "NSTimer+YYFounction.h"

@implementation NSTimer (AfeiFounction)

-(void)pauseTimer
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate distantFuture]];
}


-(void)resumeTimer
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate date]];
}

- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval
{
    if (![self isValid]) {
        return ;
    }
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:interval]];
}


@end
