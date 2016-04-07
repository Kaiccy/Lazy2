//
//  AppDelegate.m
//  Lazy2
//
//  Created by 君爵信息科技 on 16/3/21.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "AppDelegate.h"
#import "WXApi.h"
#import <TencentOpenAPI/TencentOAuth.h>
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import <BaiduMapAPI_Location/BMKLocationComponent.h>
#import "AddAddressViewController.h"
@interface AppDelegate ()<WXApiDelegate>

@property (nonatomic,strong)BMKMapManager *mapManager;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //This Is A 3D Touch Way
    [self thisIsA3DTouchWay];
    
    //This Is A Judge First Launch
//    [self isFirstLaunch];
    
    
    //微信
    [WXApi registerApp:@"wx16408db628773d61" withDescription:@"weixin"];
    
    self.mapManager = [[BMKMapManager alloc]init];
    // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
    BOOL ret = [self.mapManager start:@"YzTL8rZ5qLNP41OrGy7qFkx6My26ANrt"  generalDelegate:nil];
    if (!ret) {
        NSLog(@"百度地图授权失败 appdelegate.m!");
    }
    
    
    
    self.window.rootViewController = [AddAddressViewController new];

    return YES;
}

#pragma 微信登录
//授权后回调 WXApiDelegate
-(void)onResp:(BaseReq *)resp
{
    /*
     ErrCode ERR_OK = 0(用户同意)
     ERR_AUTH_DENIED = -4（用户拒绝授权）
     ERR_USER_CANCEL = -2（用户取消）
     code    用户换取access_token的code，仅在ErrCode为0时有效
     state   第三方程序发送时用来标识其请求的唯一性的标志，由第三方程序调用sendReq时传入，由微信终端回传，state字符串长度不能超过1K
     lang    微信客户端当前语言
     country 微信用户当前国家信息
     */
    SendAuthResp *aresp = (SendAuthResp *)resp;
    if (aresp.errCode== 0) {
        NSString *code = aresp.code;
        NSDictionary *dic = @{@"code":code};
    }
}

// 这个方法是用于从微信返回第三方App
- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    
//    [WXApi handleOpenURL:url delegate:self];
    return [TencentOAuth HandleOpenURL:url] || [WXApi handleOpenURL:url delegate:self];
    
//    return YES;
}







#pragma Mark   This Is A 3D Touch Way  ⬇️⬇️⬇️⬇️
/*
    在添加 iPhone 3D Touch 这个功能点的时候三个步骤 ：
    一、 info.plist 文件中加入 UIApplicationshortcutltems 这个对象
    二、 ViewController.m 类文件的 viewDidLoad 方法中实现
    三、 要在 AppDelegate.m 类文件的 里面实现 ：
    -(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler   这个方法
 */
- (void)thisIsA3DTouchWay{

    UIApplicationShortcutIcon *afei1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeMessage];
    UIApplicationShortcutItem *item = [[UIApplicationShortcutItem alloc] initWithType:@"one" localizedTitle:@"Lazy" localizedSubtitle:@"Afei" icon:afei1 userInfo:nil];
    
    [UIApplication sharedApplication].shortcutItems = @[item];
}
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    
    if ([shortcutItem.localizedTitle isEqualToString:@"Afei"]) {
        self.window.rootViewController.view.backgroundColor = [UIColor yellowColor];
    }
}

#pragma Mark   This Is A Guidance Page Way  ⬇️⬇️⬇️⬇️
//    判断是否第一次启动应用是否需要加载APP引导页
- (void)isFirstLaunch{
    
    if(![[NSUserDefaults standardUserDefaults] boolForKey:@"firstLaunch"]){
        
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"firstLaunch"];
        AfeiGuidancePageClass *userGuideViewController = [[AfeiGuidancePageClass alloc] init];
        self.window.rootViewController = userGuideViewController;
    }else{
        self.window.rootViewController = [LoginViewController new];
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
