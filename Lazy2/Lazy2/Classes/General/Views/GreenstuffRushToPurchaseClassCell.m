//
//  GreenstuffRushToPurchaseClassCell.m
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/5.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "GreenstuffRushToPurchaseClassCell.h"

@implementation GreenstuffRushToPurchaseClassCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
            /*
             生疏类抢购专区  ：  cell    :    height  :   150
             */
        [self addView];
        [self commodityImagebackgroundLabel];
        [self commodityImage];
        [self commodityName];
        [self commodityPrice];
        [self BuyNowButtons];
    }
    return self;
}
- (void)addView{
    //自定义两个view
    self.leftView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, Main_Screen_Width/2, 150)];
    [self.contentView addSubview:self.leftView];
    
    self.rightView=[[UIView alloc] initWithFrame:CGRectMake(Main_Screen_Width/2, 0, Main_Screen_Width/2, 150)];
    [self.contentView addSubview:self.rightView];
}
- (void)commodityImagebackgroundLabel{
    //商品图片背景
    UILabel *commodityImagebackgroundLabelLeft=[[UILabel alloc] initWithFrame:CGRectMake(10, 10, Main_Screen_Width/2-20, 100)];
    commodityImagebackgroundLabelLeft.backgroundColor=[UIColor whiteColor];
    [self.leftView addSubview:commodityImagebackgroundLabelLeft];
    
    UILabel *commodityImagebackgroundLabelRight=[[UILabel alloc] initWithFrame:CGRectMake(10, 10, Main_Screen_Width/2-20, 100)];
    commodityImagebackgroundLabelRight.backgroundColor=[UIColor whiteColor];
    [self.rightView addSubview:commodityImagebackgroundLabelRight];
}
- (void)commodityImage{
    //商品图
    self.commodityImageLeft=[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, Main_Screen_Width/2-20, 100)];
    [self.leftView addSubview:self.commodityImageLeft];
    
    self.commodityImageRight=[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, Main_Screen_Width/2-20, 100)];
    [self.rightView addSubview:self.commodityImageRight];
}
- (void)commodityName{
    //商品名称
    self.commodityNameLeft=[[UILabel alloc] initWithFrame:CGRectMake(0, 110, Main_Screen_Width/2, 20)];
    self.commodityNameLeft.textColor=[UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1];
    self.commodityNameLeft.textAlignment=NSTextAlignmentCenter;
    [self.leftView addSubview:self.commodityNameLeft];
    
    self.commodityNameRight=[[UILabel alloc] initWithFrame:CGRectMake(0, 110, Main_Screen_Width/2, 20)];
    self.commodityNameRight.textColor=[UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1];
    self.commodityNameRight.textAlignment=NSTextAlignmentCenter;
    [self.rightView addSubview:self.commodityNameRight];
    
}
- (void)commodityPrice{
    //商品价格
    self.commodityPriceLeft=[[UILabel alloc] initWithFrame:CGRectMake(10, 130, 80, 20)];
    self.commodityPriceLeft.textColor=[UIColor redColor];
    self.commodityPriceLeft.textAlignment=NSTextAlignmentCenter;
    self.commodityPriceLeft.font=BOLDSYSTEMFONT(15);
    [self.leftView addSubview:self.commodityPriceLeft];
    
    self.commodityPriceRight=[[UILabel alloc] initWithFrame:CGRectMake(10, 130, 80, 20)];
    self.commodityPriceRight.textColor=[UIColor redColor];
    self.commodityPriceRight.font=BOLDSYSTEMFONT(15);
    self.commodityPriceRight.textAlignment=NSTextAlignmentCenter;
    [self.rightView addSubview:self.commodityPriceRight];
}
- (void)BuyNowButtons{
    //立即购买
    self.BuyNowButtonsLeft=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2-90, 130, 80, 20)];
    self.BuyNowButtonsLeft.backgroundColor=[UIColor redColor];
    [self.BuyNowButtonsLeft setTitle:@"立即购买" forState:UIControlStateNormal];
    [self.BuyNowButtonsLeft setTintColor:[UIColor whiteColor]];
    [self.leftView addSubview:self.BuyNowButtonsLeft];
    
    self.BuyNowButtonsRight=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2-90, 130, 80, 20)];
    self.BuyNowButtonsRight.backgroundColor=[UIColor redColor];
    [self.BuyNowButtonsRight setTitle:@"立即购买" forState:UIControlStateNormal];
    [self.BuyNowButtonsRight setTintColor:[UIColor whiteColor]];
    [self.rightView addSubview:self.BuyNowButtonsRight];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
