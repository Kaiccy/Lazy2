//
//  LazyUserInformationCliass.m
//  Lazy2
//
//  Created by yinqijie on 16/4/1.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "LazyUserInformationCliass.h"

@implementation LazyUserInformationCliass

-(instancetype)initWithDictionary:(NSDictionary *)dic{
    self = [super init];
    if (self) {
        self.userName = [dic objectForKey:@"userName"];
        self.userPhoneNumber=[dic objectForKey:@"userPhoneNumber"];
        self.userHeadPortrait=[dic objectForKey:@"userHeadPortrait"];
        self.userSex=[dic objectForKey:@"userSex"];
        self.userBirthday=[dic objectForKey:@"userBirthday"];
        self.userMailbox=[dic objectForKey:@"userMailbox"];
    }
    return self;
}

@end
