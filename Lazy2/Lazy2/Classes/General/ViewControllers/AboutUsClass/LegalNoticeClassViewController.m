//
//  LegalNoticeClassViewController.m
//  Lazy
//  免责声明文件
//  Created by yinqijie on 16/3/9.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "LegalNoticeClassViewController.h"
#import "AboutViewController.h"

@interface LegalNoticeClassViewController ()

@property (nonatomic,strong) NSString *legalNoticeString;
@property (nonatomic,strong) UITextView *textView;

@end

@implementation LegalNoticeClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
        免责声明文件
     */
    
    [self navigationBarMethod];
    [self legalNoticeContentMethod];
    [self legalNoticeContentLayoutMethod];
}
-(void)navigationBarMethod{
    //导航栏设置方法
    UILabel *wire=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
    wire.backgroundColor = [UIColor colorWithRed:(143/255.0) green:(45/255.0) blue:(188/255.0) alpha:1];
    [self.view addSubview:wire];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 44)];
    label.text=@"免责声明";
    label.textAlignment=NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.textColor=[UIColor whiteColor];
    label.backgroundColor = [UIColor colorWithRed:(143/255.0) green:(45/255.0) blue:(188/255.0) alpha:1];
    [self.view addSubview:label];
    
    UIButton *back=[[UIButton alloc] initWithFrame:CGRectMake(10, 32, 20, 20)];
    [back setImage:[UIImage imageNamed:@"arrow.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(clicBackButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
    
}
-(void)clicBackButton{
    //导航栏返回
    AboutViewController *nextVC=[[AboutViewController alloc] init];
    [self presentViewController:nextVC animated:YES completion:nil];
}
-(void)legalNoticeContentLayoutMethod{
    //免责声明文件布局方法
    self.textView=[[UITextView alloc] init ];
    self.textView.frame=CGRectMake(30, 84, self.view.bounds.size.width-60, self.view.bounds.size.height-114);
    self.textView.text=self.legalNoticeString;
    self.textView.editable=NO;
    [self.view addSubview:self.textView];
}
-(void)legalNoticeContentMethod{
    //免责文件声明内容方法
    self.legalNoticeString=@"           免责声明  \n  1.本应用由君爵信息科技开发或所有，任何单位或个人使用或转载本APP内容前须征得杭州君爵信息科技有限公司的同意。君爵在此声明，用户通过本软件参与的商业活动，与Apple Inc.无关，Apple不承担该程序的任何责任。 \n 2.   懒猪社区手机客户端的品牌合作商，如Apple，AppleStore，非懒猪社区手机客户端的赞助商，也未拥有该客户端的知识产权或其他任何权益。因懒猪社区手机客户端侵犯第三方知识产权的，由懒猪社区承担相应的法律责任。   \n  3. 懒猪社区APP内容使用 \n  杭州君爵信息科技有限公司保留本站点的内容的解释权。对于内容中所含的版权和其他所有权声明，您应予以尊重并在其副本中予以保留。如果懒猪社区APP内容无版权声明，并不代表懒猪社区APP对其不享有权利，也不意味着懒猪社区APP不主张权利，您应根据诚信原则尊重该等内容的合法权益并进行合法使用。您不得以任何方式修改、复制、公开展示、公布或分发这些材料或者以其他方式把它们用于任何公开或商业目的。禁止以任何目的把这些材料用于其他任何网站或其他平面媒体或网络计算机环境。本APP上的内容及编辑等形式均受版权法等法律保护，任何未经授权的使用都可能构成对版权、商标和其他法律权利的侵犯。如果您不接受或违反上述约定，您使用本APP的授权将自动终止。  \n  4. 懒猪社区APP信息发布  \n  杭州君爵信息科技对本APP内容可用性不附加任何形式的保证。也不保证本APP信息的绝对准确性和绝对完整性。本APP中的内容如已过期，杭州君爵信息科技不承诺必须更新它们。 \n  5. 用户提交信息   \n  您对本APP的使用不得违背法律法规及公众道德，不得向或从本站邮寄或发送任何非法、威胁、诽谤、中伤、淫秽、色情或其他可能违法的材料。若相关人对此信息的内容及影响提出确有证据的警告或异议，本APP可随时删除该等信息或无限时中止该信息的页面浏览，而不必事先取得提交者的同意，亦无义务事后通知提交者，情况严重的，本APP可采取注销该用户的措施。    \n  6. 一般原则 \n  杭州君爵信息科技可能随时修改这些条款。您应经常访问本页面以了解当前的条款，因为这些条款与您密切相关。";
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
