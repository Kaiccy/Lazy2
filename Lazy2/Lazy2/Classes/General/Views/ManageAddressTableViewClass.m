//
//  ManageAddressTableViewClass.m
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/6.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "ManageAddressTableViewClass.h"
#import "MacroDefinition.h"
@implementation ManageAddressTableViewClass

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        /*
            管理收货地址  cell   height  :  120
         */
        [self nameLabelWay];
        [self phoneNumberLabelWay];
        [self addressLabelWay];
        [self punctuateLabelWay];
        
    }
    return self;
}
- (void)nameLabelWay{
    self.nameLabel=[[UILabel alloc] initWithFrame:CGRectMake(60, 20, 80, 30)];
    self.nameLabel.textAlignment=NSTextAlignmentLeft;
    self.nameLabel.textColor=[UIColor blackColor];
    self.nameLabel.font=[UIFont boldSystemFontOfSize:20];
    [self.contentView addSubview:self.nameLabel];
}
- (void)phoneNumberLabelWay{
    self.phoneNumberLabel=[[UILabel alloc] initWithFrame:CGRectMake(160, 20, Main_Screen_Width-200, 30)];
    self.phoneNumberLabel.textAlignment=NSTextAlignmentLeft;
    self.phoneNumberLabel.textColor=[UIColor blackColor];
    self.phoneNumberLabel.font=[UIFont boldSystemFontOfSize:20];
    [self.contentView addSubview:self.phoneNumberLabel];
}
- (void)addressLabelWay{
    self.phoneNumberLabel=[[UILabel alloc] initWithFrame:CGRectMake(60, 50, Main_Screen_Width-100, 70)];
    self.phoneNumberLabel.textAlignment=NSTextAlignmentLeft;
    self.phoneNumberLabel.textColor=[UIColor blackColor];
    self.phoneNumberLabel.font=[UIFont systemFontOfSize:18];
    self.phoneNumberLabel.numberOfLines=0;
    [self.contentView addSubview:self.phoneNumberLabel];
}
- (void)punctuateLabelWay{
    self.punctuateLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 50, 20, 20)];
    [self.contentView addSubview:self.punctuateLabel];

}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
