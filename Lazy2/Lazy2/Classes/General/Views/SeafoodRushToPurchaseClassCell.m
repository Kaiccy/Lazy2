//
//  SeafoodRushToPurchaseClassCell.m
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/5.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "SeafoodRushToPurchaseClassCell.h"
#import "MacroDefinition.h"
@implementation SeafoodRushToPurchaseClassCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        /*
            海鲜抢购专区   ：  Cell   :  height  :   100
         */
        
        [self commodityImageWay];
        [self commodityNameWay];
        [self commodityPriceWay];
        [self timerImageWay];
        [self timeRemainingWay];
        [self rushToPurchaseButtonWay];
    }
    return self;
}
- (void)commodityImageWay{
    //商品图
    self.commodityImage=[[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 80, 80)];
    [self.commodityImage setImage:[UIImage imageNamed:@"1.png"]];
    [self.contentView addSubview:self.commodityImage];
}
- (void)commodityNameWay{
    //商品名
    self.commodityName=[[UILabel alloc] initWithFrame:CGRectMake(Main_Screen_Width/2, 10, Main_Screen_Width/2, 20)];
    self.commodityName.text=@"测试字段";
    self.commodityName.backgroundColor=[UIColor redColor];
    [self.contentView addSubview:self.commodityName];
}
- (void)commodityPriceWay{
    //价格
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(Main_Screen_Width/2, 30, 30, 20)];
    label.text=@"仅需";
    label.textColor=[UIColor grayColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.font=BOLDSYSTEMFONT(12);
    [self.contentView addSubview:label];
    
    self.commodityPrice=[[UILabel alloc] initWithFrame:CGRectMake(Main_Screen_Width/2+30, 30, Main_Screen_Width/2, 20)];
    self.commodityPrice.textColor=[UIColor redColor];
    self.commodityPrice.text=@"$ 888.888";
    [self.contentView addSubview:self.commodityPrice];
}
- (void)timerImageWay{
    //时间图
    self.timerImage=[[UIImageView alloc] initWithFrame:CGRectMake(Main_Screen_Width/2, 50, 20, 20)];
    [self.timerImage setImage:[UIImage imageNamed:@"1.png"]];
    [self.contentView addSubview:self.timerImage];
}
- (void)timeRemainingWay{
    //剩余时间
    self.timeRemaining=[[UILabel alloc] initWithFrame:CGRectMake(Main_Screen_Width/2+30, 50, 80, 20)];
    self.timeRemaining.text=@"88:88:88";
    self.timeRemaining.font=BOLDSYSTEMFONT(15);
    self.timeRemaining.textColor=[UIColor grayColor];
    [self.contentView addSubview:self.timeRemaining];
}
- (void)rushToPurchaseButtonWay{
    //抢购结束按钮
    self.rushToPurchaseButton=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2, 75, 80, 20)];
    self.rushToPurchaseButton.backgroundColor=[UIColor lightGrayColor];
    [self.rushToPurchaseButton setTitle:@"抢购结束" forState:UIControlStateNormal];
    [self.rushToPurchaseButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.contentView addSubview:self.rushToPurchaseButton];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 99.5, Main_Screen_Width, 0.5)];
    label.backgroundColor=[UIColor grayColor];
    [self.contentView addSubview:label];
}
- (void)awakeFromNib {
    [super awakeFromNib];
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
