//
//  MyLazyAccountNumberClassTableViewCell.h
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/6.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLazyAccountNumberClassTableViewCell : UITableViewCell
    /*
        我的账号   cell    height  :  400
     */
//我的头像
@property (nonatomic,strong)UIImageView *myPortraitImage;
@property (nonatomic,strong)UIButton *myPortraitButton;
//我的昵称
@property (nonatomic,strong)UITextField *myNicknameTextField;
//手机号
@property (nonatomic,strong)UITextField *myPhoneNumberTextField;
//性别
@property (nonatomic,strong)UITextField *myGenderTextField;
//生日
@property (nonatomic,strong)UITextField *myBirthdayTextField;
//邮箱
@property (nonatomic,strong)UITextField *myMailboxTextField;
//完成
@property (nonatomic,strong)UIButton *accomplish;
//退出
@property (nonatomic,strong)UIButton *logOut;

@end
