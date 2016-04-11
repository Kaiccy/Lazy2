//
//  MyLazyAccountNumberClassTableViewCell.m
//  AfeiSeafoodRushToPurchaseClass
//
//  Created by yinqijie on 16/4/6.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "MyLazyAccountNumberClassTableViewCell.h"
#import "MacroDefinition.h"
@implementation MyLazyAccountNumberClassTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        /*
            我的账号   cell    height   :   400
         */
        [self myPortraitImageWay];
        [self myNicknameTextFieldWay];
        [self myPhoneNumberTextFieldWay];
        [self myGenderTextFieldWay];
        [self myBirthdayTextFieldWay];
        [self myMailboxTextFieldWay];
        [self accomplishWay];
        [self logOutWay];
    }
    return self;
}
- (void)myPortraitImageWay{
    self.myPortraitImage=[[UIImageView alloc] initWithFrame:CGRectMake(Main_Screen_Width/2-50, 40, 100, 100)];
    [self.myPortraitImage setImage:[UIImage imageNamed:@"1.png"]];
    [self.contentView addSubview:self.myPortraitImage];
    self.myPortraitButton=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2-50, 40, 100, 100)];
    [self.contentView addSubview:self.myPortraitButton];
}
- (void)myNicknameTextFieldWay{
    self.myNicknameTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 150, Main_Screen_Width-80, 30)];
    self.myNicknameTextField.placeholder=@"昵称:";
    self.myNicknameTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.myNicknameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.myNicknameTextField.clearsOnBeginEditing=YES;
    self.myNicknameTextField.keyboardType=UIKeyboardTypeDefault;
    self.myNicknameTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.myNicknameTextField];
}
- (void)myPhoneNumberTextFieldWay{
    self.myPhoneNumberTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 190, Main_Screen_Width-80, 30)];
    self.myPhoneNumberTextField.placeholder=@"手机号:";
    self.myPhoneNumberTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.myPhoneNumberTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.myPhoneNumberTextField.clearsOnBeginEditing=YES;
    self.myPhoneNumberTextField.keyboardType=UIKeyboardTypePhonePad;
    self.myPhoneNumberTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.myPhoneNumberTextField];
}
- (void)myGenderTextFieldWay{
    self.myGenderTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 230, Main_Screen_Width-80, 30)];
    self.myGenderTextField.placeholder=@"性别:";
    self.myGenderTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.myGenderTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.myGenderTextField.clearsOnBeginEditing=YES;
    self.myGenderTextField.keyboardType=UIKeyboardTypePhonePad;
    self.myGenderTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.myGenderTextField];
}
- (void)myBirthdayTextFieldWay{
    self.myBirthdayTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 270, Main_Screen_Width-80, 30)];
    self.myBirthdayTextField.placeholder=@"生日:";
    self.myBirthdayTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.myBirthdayTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.myBirthdayTextField.clearsOnBeginEditing=YES;
    self.myBirthdayTextField.keyboardType=UIKeyboardTypeDefault;
    self.myBirthdayTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.myBirthdayTextField];
}
- (void)myMailboxTextFieldWay{
    self.myBirthdayTextField=[[UITextField alloc] initWithFrame:CGRectMake(40, 310, Main_Screen_Width-80, 30)];
    self.myBirthdayTextField.placeholder=@"邮箱:";
    self.myBirthdayTextField.font = [UIFont fontWithName:@"Arial" size:20.0f];;
    self.myBirthdayTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.myBirthdayTextField.clearsOnBeginEditing=YES;
    self.myBirthdayTextField.keyboardType=UIKeyboardTypeEmailAddress;
    self.myBirthdayTextField.borderStyle = UITextBorderStyleLine;
    [self.contentView addSubview:self.myBirthdayTextField];
}
- (void)accomplishWay{
    self.accomplish=[[UIButton alloc] initWithFrame:CGRectMake(40, 370, Main_Screen_Width/2-50, 30)];
    [self.accomplish setTitle:@"完成" forState:UIControlStateNormal];
    [self.accomplish setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.accomplish.backgroundColor=[UIColor redColor];
    [self.contentView addSubview:self.accomplish];
}
- (void)logOutWay{
    self.logOut=[[UIButton alloc] initWithFrame:CGRectMake(Main_Screen_Width/2+10, 370, Main_Screen_Width/2-50, 30)];
    [self.logOut setTitle:@"退出" forState:UIControlStateNormal];
    [self.logOut setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.logOut.backgroundColor=[UIColor redColor];
    [self.contentView addSubview:self.logOut];
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
