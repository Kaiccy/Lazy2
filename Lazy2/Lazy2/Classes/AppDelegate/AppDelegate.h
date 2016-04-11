//
//  AppDelegate.h
//  Lazy2
//
//  Created by 君爵信息科技 on 16/3/21.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    NSString* wbtoken;
    NSString* wbCurrentUserID;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *wbtoken;
@property (strong, nonatomic) NSString *wbRefreshToken;
@property (strong, nonatomic) NSString *wbCurrentUserID;
@end

