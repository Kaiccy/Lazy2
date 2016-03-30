//
//  AfeiWindowTool.m
//  Lazy2
//
//  Created by yinqijie on 16/3/28.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "AfeiWindowTool.h"

@implementation AfeiWindowTool

+ (void)changeWindowRootVC:(UIViewController *)vc{
    
    UIWindow *window = [[[UIApplication sharedApplication] delegate] window];
    window.rootViewController = vc;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationTransition:5 forView:window cache:YES];
    [UIView commitAnimations];
}

+ (void)flipView:(UIView *)view{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.6];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:view cache:YES];
    [UIView commitAnimations];
}

@end
