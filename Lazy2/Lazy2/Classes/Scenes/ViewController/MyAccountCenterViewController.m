//
//  MyAccountCenterViewController.m
//  Lazy2
//
//  Created by yinqijie on 16/4/8.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "MyAccountCenterViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <AssetsLibrary/ALAsset.h>
#import <AssetsLibrary/ALAssetsLibrary.h>
#import <AssetsLibrary/ALAssetsGroup.h>
#import <AssetsLibrary/ALAssetRepresentation.h>
#import "MyLazyAccountNumberClassTableViewCell.h"
#import "AfeiLazyCustomNavigation.h"
#import "MacroDefinition.h"
#import "AppDelegate.h"

@interface MyAccountCenterViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate>

@property (nonatomic,strong)UITableView *myCenterTableView;
@property (nonatomic,strong)MyLazyAccountNumberClassTableViewCell *cell;
@property (nonatomic,strong)UIActionSheet *actionSheet;

@end

@implementation MyAccountCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
        我的账号
     */
    AFEINAVIGATIONMACRO(@"我的账号");
    [self addTableViewWay];
}
#pragma mark    导航栏返回方法
- (void)backTouchClick{
    
}
#pragma mark    加载 TableView
- (void)addTableViewWay{
    self.myCenterTableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height-64)];
    self.myCenterTableView.delegate=self;
    self.myCenterTableView.dataSource=self;
    [self.myCenterTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:self.myCenterTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 400;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *addCell = @"MyLazyAccountNumberClassTableViewCell";
    self.cell= [tableView dequeueReusableCellWithIdentifier:addCell];
    if (!self.cell) {
        self.cell = [[MyLazyAccountNumberClassTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:addCell];
        self.cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [self.cell.myPortraitButton addTarget:self action:@selector(myPortraitButtonTouchClick) forControlEvents:UIControlEventTouchUpInside];
        [self.cell.accomplish addTarget:self action:@selector(accomplishTouchClick) forControlEvents:UIControlEventTouchUpInside];
        [self.cell.logOut addTarget:self action:@selector(logOutTouClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self.cell;
}
#pragma mark    去相册取用户图片
- (void)myPortraitButtonTouchClick{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        self.actionSheet=[[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"拍照",@"从相册选择",nil];
    }else{
        self.actionSheet=[[UIActionSheet alloc] initWithTitle:@"选择图像" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"从相册选择", nil];
    }
    self.actionSheet.tag=1551;
    [self.actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (actionSheet.tag==1551) {
        NSUInteger sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            switch (buttonIndex) {
                case 0://来源：相机
                    sourceType=UIImagePickerControllerSourceTypeCamera;
                    break;
                  case 1://来源：相册
                    sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
                    break;
                    case 2:
                    return;
            }
        }else{
            if (buttonIndex==2) {
                return;
            }else{
                sourceType=UIImagePickerControllerSourceTypeSavedPhotosAlbum;
            }
        }
        //跳转到相机或者是相册页面
        UIImagePickerController *imagePickerController=[[UIImagePickerController alloc] init];
        imagePickerController.delegate=self;
        imagePickerController.allowsEditing=YES;
//        imagePickerController.sourceType=sourceType;
        [self presentViewController:imagePickerController animated:YES completion:^{
            
        }];
    }
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
        [picker dismissViewControllerAnimated:YES completion:^{
            
        }];
    UIImage *image=[info objectForKey:UIImagePickerControllerOriginalImage];
    self.cell.myPortraitImage.image=image;
    NSLog(@"我的账户用户头像%@",self.cell.myPortraitImage.image);
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}
#pragma mark    监测是否是邮箱或者是手机号码
- (BOOL)validateEmail:(NSString *)email{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}
- (BOOL)isMobile:(NSString *)mobileNum{
    /**
     * 手机号码
     * 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     * 联通：130,131,132,152,155,156,185,186
     * 电信：133,1349,153,180,189
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    /**
     10         * 中国移动：China Mobile
     11         * 134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     12         */
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    /**
     15         * 中国联通：China Unicom
     16         * 130,131,132,152,155,156,185,186
     17         */
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    /**
     20         * 中国电信：China Telecom
     21         * 133,1349,153,180,189
     22         */
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    /**
     25         * 大陆地区固话及小灵通
     26         * 区号：010,020,021,022,023,024,025,027,028,029
     27         * 号码：七位或八位
     28         */
    // NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:mobileNum] == YES)
        || ([regextestcm evaluateWithObject:mobileNum] == YES)
        || ([regextestct evaluateWithObject:mobileNum] == YES)
        || ([regextestcu evaluateWithObject:mobileNum] == YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}
#pragma  mark   完成用户信息保存或退出登录
- (void)accomplishTouchClick{
    //完成用户信息修改返回主界面
}
- (void)logOutTouClick{
    //退出登录
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
