//
//  AboutViewController.m
//  Lazy
//
//  Created by yinqijie on 15/10/8.
//  Copyright (c) 2015年 yinqijie. All rights reserved.
//

#import "AboutViewController.h"

#import "LegalNoticeClassViewController.h"//免责声明文件
#import "UserAgreementViewController.h"//用户协议文件

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*
        关于我们
     */
    //布局
    [self layout];
    
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    self.versionLb.text = [NSString stringWithFormat:@"当前版本: %@",version];
}

- (void)layout
{
    self.view.frame = [[UIScreen mainScreen]bounds];
    self.logoImg.frame = CGRectMake(self.view.frame.size.width / 2 - 40, self.introduceText.frame.size.height + self.introduceText.frame.origin.y - 10, 80, 80);
    self.logoLb.frame = CGRectMake(self.view.frame.size.width / 2 - 42, self.logoImg.frame.size.height + self.logoImg.frame.origin.y + 5, 84, 20);
    self.versionLb.frame = CGRectMake(self.view.frame.size.width / 2 - 50, self.logoLb.frame.size.height + self.logoLb.frame.origin.y, 100, 20);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addLegalNoticeClass:(UIButton *)sender {
    //在这里跳转至免责声明类
    LegalNoticeClassViewController *nextVC=[[LegalNoticeClassViewController alloc] init];
    [self presentViewController:nextVC animated:YES completion:nil];
}
- (IBAction)userAgreementClass:(UIButton *)sender {
    //在这里跳转至用户协议类
    UserAgreementViewController *nextVC=[[UserAgreementViewController alloc] init];
    [self presentViewController:nextVC animated:YES completion:nil];
}


- (IBAction)backBt:(id)sender
{
//    MainViewController *nextVC=[[MainViewController alloc] init];
//    [self presentViewController:nextVC animated:YES completion:nil];
}
@end
