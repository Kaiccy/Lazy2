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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)registerBtnAction:(UIButton *)sender {
}

- (IBAction)getCodeAction:(UIButton *)sender {
}
- (IBAction)forgetPassword:(UIButton *)sender {
}

- (IBAction)LoginWithPhoneBtnActtion:(UIButton *)sender {
}

- (IBAction)weichatLoginAction:(UIButton *)sender {
}

- (IBAction)weiboLoginAction:(UIButton *)sender {
}

- (IBAction)qqLoginAction:(UIButton *)sender {
}
- (IBAction)getRCodeAction:(UIButton *)sender {
}
- (IBAction)registerNowAction:(UIButton *)sender {
}

- (IBAction)goBackAction:(UIButton *)sender {
}
@end
