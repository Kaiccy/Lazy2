//
//  LazyUserInformationCliass.h
//  Lazy2
//
//  Created by yinqijie on 16/4/1.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LazyUserInformationCliass : NSObject

    //用户名
@property (nonatomic,strong)NSString *userName;
    //用户手机号码
@property (nonatomic,strong)NSString *userPhoneNumber;
    //用户头像
@property (nonatomic,strong)UIImage *userHeadPortrait;
    //用户性别
@property (nonatomic,strong)NSString *userSex;
    //用户生日
@property (nonatomic,strong)NSString *userBirthday;
    //用户邮箱
@property (nonatomic,strong)NSString *userMailbox;

//使用一个字典进行初始化
- (instancetype)initWithDictionary:(NSDictionary *)dic;

@end
