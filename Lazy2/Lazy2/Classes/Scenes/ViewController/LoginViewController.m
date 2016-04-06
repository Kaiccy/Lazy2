//
//  LoginViewController.m
//  Lazy2
//
//  Created by 君爵信息科技 on 16/3/25.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

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
    



}



//顶上的注册按钮
- (IBAction)registerBtnAction:(UIButton *)sender {
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
    
}

//微博登录
- (IBAction)weiboLoginAction:(UIButton *)sender {
}

//扣扣登录
- (IBAction)qqLoginAction:(UIButton *)sender {
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
