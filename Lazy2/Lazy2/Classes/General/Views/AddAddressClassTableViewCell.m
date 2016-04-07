//
//  AddAddressClassTableViewCell.m
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/6.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "AddAddressClassTableViewCell.h"
#import "MacroDefinition.h"
@implementation AddAddressClassTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        /*
            添加地址   ：  Cell    height  :  360
         */
        [self consigneeTextFieldWay];
        [self phoneNumberTextFieldWay];
        [self provincialAreasTextFieldWay];
        [self locationCommunityTextFieldWay];
        [self houseNumberTextFieldWay];
        [self provincialAreasButtonWay];
        [self locationCommunityButtonWay];
        [self saveAddressWay];
    }
    return self;
}
- (void)consigneeTextFieldWay{
    self.consigneeTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 20, Main_Screen_Width-80, 40)];
    self.consigneeTextField.placeholder=@"收货人:";
    self.consigneeTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.consigneeTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.consigneeTextField.clearsOnBeginEditing=YES;
    self.consigneeTextField.keyboardType=UIKeyboardTypeDefault;
    self.consigneeTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.consigneeTextField];
    
}
- (void)phoneNumberTextFieldWay{
    self.phoneNumberTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 80, Main_Screen_Width-80, 40)];
    self.phoneNumberTextField.placeholder=@"手机号:";
    self.phoneNumberTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.phoneNumberTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.phoneNumberTextField.clearsOnBeginEditing=YES;
    self.phoneNumberTextField.keyboardType=UIKeyboardTypeNumberPad;
    self.phoneNumberTextField.borderStyle=UITextBorderStyleLine;
    [self.contentView addSubview:self.phoneNumberTextField];
}
- (void)provincialAreasTextFieldWay{
    self.provincialAreasTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 140, Main_Screen_Width-80, 40)];
    self.provincialAreasTextField.placeholder=@"省市区:";
    self.provincialAreasTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.provincialAreasTextField.clearButtonMode = UITextFieldViewModeNever;
    self.provincialAreasTextField.clearsOnBeginEditing=YES;
    self.provincialAreasTextField.keyboardType=UIKeyboardTypeDefault;
    self.provincialAreasTextField.borderStyle=UITextBorderStyleLine;
    [self.contentView addSubview:self.provincialAreasTextField];
}
- (void)locationCommunityTextFieldWay{
    self.locationCommunityTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 200, Main_Screen_Width-80, 40)];
    self.locationCommunityTextField.placeholder=@"定位小区:";
    self.locationCommunityTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.locationCommunityTextField.clearButtonMode = UITextFieldViewModeNever;
    self.locationCommunityTextField.clearsOnBeginEditing=YES;
    self.locationCommunityTextField.keyboardType=UIKeyboardTypeDefault;
    self.locationCommunityTextField.borderStyle=UITextBorderStyleLine;
    [self.contentView addSubview:self.locationCommunityTextField];
}
- (void)houseNumberTextFieldWay{
    self.houseNumberTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 260, Main_Screen_Width-80, 40)];
    self.houseNumberTextField.placeholder=@"门牌号:";
    self.houseNumberTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.houseNumberTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.houseNumberTextField.clearsOnBeginEditing=YES;
    self.houseNumberTextField.keyboardType=UIKeyboardTypeDefault;
    self.houseNumberTextField.borderStyle=UITextBorderStyleLine;
    [self.contentView addSubview:self.houseNumberTextField];
}
- (void)provincialAreasButtonWay{
    self.provincialAreasButton=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width-80, 140, 40, 40)];
    [self.provincialAreasButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.contentView addSubview:self.provincialAreasButton];
}
- (void)locationCommunityButtonWay{
    self.locationCommunityButton=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width-80, 200, 40, 40)];
    [self.locationCommunityButton setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.contentView addSubview:self.locationCommunityButton];
}
- (void)saveAddressWay{
    self.saveAddress=[[UIButton alloc] initWithFrame:CGRectMake(40, 320, Main_Screen_Width-80, 40)];
    [self.saveAddress setTitle:@"保 存 地 址" forState:UIControlStateNormal];
    [self.saveAddress setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.saveAddress.backgroundColor=[UIColor redColor];
    [self.contentView addSubview:self.saveAddress];
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
