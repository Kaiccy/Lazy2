//
//  ManageAddressTableViewClass.h
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/6.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ManageAddressTableViewClass : UITableViewCell
        /*
            管理收货地址  cell  height  :  120
         */
//姓名
@property (nonatomic,strong)UILabel *nameLabel;
//电话
@property (nonatomic,strong)UILabel *phoneNumberLabel;
//地址
@property (nonatomic,strong)UILabel *addressLabel;
//选择圈
@property (nonatomic,strong)UILabel *punctuateLabel;

@end
