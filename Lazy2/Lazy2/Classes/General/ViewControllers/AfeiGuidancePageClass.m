//
//  AfeiGuidancePageClass.m
//  Afei
//
//  Created by yinqijie on 16/3/29.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#define SCREEN_FRAME ([UIScreen mainScreen].bounds)
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#import "AfeiGuidancePageClass.h"
#import "LoginViewController.h"

@interface AfeiGuidancePageClass ()

@end

@implementation AfeiGuidancePageClass

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    [self aFeiAddGuidanceImageWay];
}

- (void)aFeiAddGuidanceImageWay{
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [scrollView setContentSize:CGSizeMake(SCREEN_WIDTH*4, 0)];
    [scrollView setPagingEnabled:YES];
    
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [imageview setImage:[UIImage imageNamed:@"欢迎页面1.jpg"]];
    [scrollView addSubview:imageview];
    
    UIImageView *imageview1 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [imageview1 setImage:[UIImage imageNamed:@"欢迎页面2.jpg"]];
    [scrollView addSubview:imageview1];
    
    UIImageView *imageview2 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH*2, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [imageview2 setImage:[UIImage imageNamed:@"欢迎页面3.jpg"]];
    [scrollView addSubview:imageview2];
    
    UIImageView *imageview3 = [[UIImageView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH*3, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [imageview3 setImage:[UIImage imageNamed:@"欢迎页面2.jpg"]];
    imageview3.userInteractionEnabled = YES;
    [scrollView addSubview:imageview3];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:nil forState:UIControlStateNormal];
    [button setFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    [button addTarget:self action:@selector(aFeiGuidancePageLoadClissClickWay) forControlEvents:UIControlEventTouchUpInside];
    [imageview3 addSubview:button];
    
    [self.view addSubview:scrollView];
}

- (void)aFeiGuidancePageLoadClissClickWay{
    
    LoginViewController *firstVC = [[LoginViewController alloc]init];
    [self presentViewController:firstVC animated:YES completion:nil];
}

@end
