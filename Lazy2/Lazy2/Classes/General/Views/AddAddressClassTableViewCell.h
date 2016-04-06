//
//  AddAddressClassTableViewCell.h
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/6.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddAddressClassTableViewCell : UITableViewCell
    /*
        添加地址 : cell     height : 360
    */
//收货人
@property (nonatomic,strong)UITextField *consigneeTextField;
//手机号
@property (nonatomic,strong)UITextField *phoneNumberTextField;
//省市区
@property (nonatomic,strong)UITextField *provincialAreasTextField;
//定位小区
@property (nonatomic,strong)UITextField *locationCommunityTextField;
//门牌号
@property (nonatomic,strong)UITextField *houseNumberTextField;
//定位 ： 省市区
@property (nonatomic,strong)UIButton *provincialAreasButton;
//定位 ： 定位小区
@property (nonatomic,strong)UIButton *locationCommunityButton;
//保存
@property (nonatomic,strong)UIButton *saveAddress;


@end
