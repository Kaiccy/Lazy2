//
//  LoginViewController.m
//  Lazy2
//
//  Created by 君爵信息科技 on 16/3/25.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "LoginViewController.h"
#import "WXApi.h"
#import <TencentOpenAPI/TencentOAuth.h>

@interface LoginViewController ()<TencentSessionDelegate>
{
    TencentOAuth *tencentOAuth;
    NSArray *permissions;
}

- (IBAction)registerBtnAction:(UIButton *)sender;//顶部的注册按钮

@property (weak, nonatomic) IBOutlet UIButton *topLoginBtn;//顶部的登录按钮

//登录页面
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@property (weak, nonatomic) IBOutlet UITextField *codeTextField;

@property (weak, nonatomic) IBOutlet UILabel *CodeTime;

@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@property (weak, nonatomic) IBOutlet UIButton *loginNowBtn;

@property (weak, nonatomic) IBOutlet UILabel *weiboLabel;

@property (weak, nonatomic) IBOutlet UILabel *qqLabel;

@property (weak, nonatomic) IBOutlet UILabel *weichatLabel;

- (IBAction)getCodeAction:(UIButton *)sender;

- (IBAction)forgetPassword:(UIButton *)sender;

- (IBAction)LoginWithPhoneBtnActtion:(UIButton *)sender;

- (IBAction)weichatLoginAction:(UIButton *)sender;

- (IBAction)weiboLoginAction:(UIButton *)sender;

- (IBAction)qqLoginAction:(UIButton *)sender;

- (IBAction)loginNowAction:(UIButton *)sender;



//注册页面
@property (weak, nonatomic) IBOutlet UIView *registerView;

@property (weak, nonatomic) IBOutlet UITextField *rPhoneTF;

@property (weak, nonatomic) IBOutlet UITextField *rPassword;

@property (weak, nonatomic) IBOutlet UITextField *rPasswordSureTF;

@property (weak, nonatomic) IBOutlet UITextField *rCodeTf;

@property (weak, nonatomic) IBOutlet UILabel *rCodeLabel;

- (IBAction)getRCodeAction:(UIButton *)sender;

- (IBAction)registerNowAction:(UIButton *)sender;

//返回按钮
- (IBAction)goBackAction:(UIButton *)sender;

@end



@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    tencentOAuth=[[TencentOAuth alloc]initWithAppId:@"1104911897" andDelegate:self];
    
    //4，设置需要的权限列表，此处尽量使用什么取什么。
    permissions= [NSArray arrayWithObjects:@"get_user_info", @"get_simple_userinfo", @"add_t", nil];


}



//顶上的注册按钮
- (IBAction)registerBtnAction:(UIButton *)sender {
    self.registerView.hidden = NO;
}

// 顶部登录按钮
- (IBAction)topLoginAction:(id)sender {
    self.registerView.hidden = YES;
}

//获取登录时的验证码
- (IBAction)getCodeAction:(UIButton *)sender {
}

//忘记密码
- (IBAction)forgetPassword:(UIButton *)sender {
}

//使用手机号快速登录
- (IBAction)LoginWithPhoneBtnActtion:(UIButton *)sender {
}

//微信登录
- (IBAction)weichatLoginAction:(UIButton *)sender {
   
    if ([WXApi isWXAppInstalled]) {
        SendAuthReq *req = [[SendAuthReq alloc] init];
        req.scope = @"snsapi_userinfo";
        req.state = @"App";
        [WXApi sendReq:req];
    }
}
//-(void)sendAuthRequest
//{
//    SendAuthReq* req =[[SendAuthReq alloc ] init];
//    req.scope = @"snsapi_userinfo,snsapi_base";
//    req.state = @"0744" ;
//    [WXApi sendReq:req];
//}

//微博登录
- (IBAction)weiboLoginAction:(UIButton *)sender {
}

//扣扣登录
- (IBAction)qqLoginAction:(UIButton *)sender {
    [tencentOAuth authorize:permissions inSafari:NO];
}

#pragma mark -- TencentSessionDelegate
//登陆完成调用
- (void)tencentDidLogin
{
//    resultLable.text = @"登录完成";
    NSLog(@"登录完成");
    
    
    if (tencentOAuth.accessToken && 0 != [tencentOAuth.accessToken length])
    {
        //  记录登录用户的OpenID、Token以及过期时间
//        tokenLable.text = tencentOAuth.accessToken;
        NSLog(@"tencentOAuth.accessToken = %@",tencentOAuth.accessToken);
        [tencentOAuth getUserInfo];
    }
    else
    {
//        tokenLable.text = @"登录不成功 没有获取accesstoken";
        NSLog(@"登录不成功 没有获取accesstoken");
    }
}

//非网络错误导致登录失败：
-(void)tencentDidNotLogin:(BOOL)cancelled
{
    NSLog(@"tencentDidNotLogin");
    if (cancelled)
    {
//        resultLable.text = @"用户取消登录";
        NSLog(@"用户取消登录");
    }else{
//        resultLable.text = @"登录失败";
        NSLog(@"登录失败");
    }
}
// 网络错误导致登录失败：
-(void)tencentDidNotNetWork
{
    NSLog(@"tencentDidNotNetWork");
//    resultLable.text = @"无网络连接，请设置网络";
    NSLog(@"无网络连接");
}

-(void)getUserInfoResponse:(APIResponse *)response
{
    NSLog(@"respons:%@",response.jsonResponse);
}



//立即登录
- (IBAction)loginNowAction:(UIButton *)sender {
}

//获取注册时的验证码
- (IBAction)getRCodeAction:(UIButton *)sender {
}

//立即注册
- (IBAction)registerNowAction:(UIButton *)sender {
}

//返回
- (IBAction)goBackAction:(UIButton *)sender {
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
