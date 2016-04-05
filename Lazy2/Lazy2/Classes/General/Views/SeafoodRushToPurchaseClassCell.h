//
//  SeafoodRushToPurchaseClassCell.h
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/5.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SeafoodRushToPurchaseClassCell : UITableViewCell
    /*
        海鲜抢购专区 ： Cell :  height : 100
     */

//商品图  左侧大图 80*80
@property (nonatomic, strong) UIImageView *commodityImage;
//商品名称
@property (nonatomic, strong) UILabel *commodityName;
//商品价格
@property (nonatomic, strong) UILabel *commodityPrice;
//时钟 图
@property (nonatomic, strong) UIImageView *timerImage;
//剩余时间
@property (nonatomic, strong) UILabel *timeRemaining;
//立即抢购/抢购结束  按钮
@property (nonatomic, strong) UIButton *rushToPurchaseButton;


@end
