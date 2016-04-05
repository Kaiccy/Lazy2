//
//  GreenstuffRushToPurchaseClassCell.h
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/5.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MacroDefinition.h"
@interface GreenstuffRushToPurchaseClassCell : UITableViewCell
    /*
        生疏类抢购专区  ：  cell   :height     :150
     */
@property(nonatomic,strong)UIView *leftView;
@property(nonatomic,strong)UIView *rightView;
//商品图 ： 左侧
@property(nonatomic,strong)UIImageView *commodityImageLeft;
//商品图 ： 右侧
@property(nonatomic,strong)UIImageView *commodityImageRight;
//商品名 ： 左侧
@property(nonatomic,strong)UILabel *commodityNameLeft;
//商品名 ： 右侧
@property(nonatomic,strong)UILabel *commodityNameRight;
//商品价格 ： 左侧
@property(nonatomic,strong)UILabel *commodityPriceLeft;
//商品价格 ： 右侧
@property(nonatomic,strong)UILabel *commodityPriceRight;
//立即购买 ： 左侧
@property(nonatomic,strong)UIButton *BuyNowButtonsLeft;
//立即购买 ： 右侧
@property(nonatomic,strong)UIButton *BuyNowButtonsRight;


@end
