//
//  MyOrderTableViewCell.h
//  Lazy2
//
//  Created by 君爵信息科技 on 16/4/5.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyOrderTableViewCell : UITableViewCell
//订单状态 （已关闭、已成交。。。。。。）
@property (weak, nonatomic) IBOutlet UILabel *orderPayStatus;
//订单编号
@property (weak, nonatomic) IBOutlet UILabel *orderPayNumber;
//下单时间
@property (weak, nonatomic) IBOutlet UILabel *orderTime;
//订单价格
@property (weak, nonatomic) IBOutlet UILabel *orderPrice;

@end
