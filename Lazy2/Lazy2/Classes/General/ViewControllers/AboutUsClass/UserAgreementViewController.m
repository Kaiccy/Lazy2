//
//  UserAgreementViewController.m
//  Lazy
//  软件许可使用协议
//  Created by yinqijie on 16/3/9.
//  Copyright © 2016年 yinqijie. All rights reserved.
//

#import "UserAgreementViewController.h"
#import "AboutViewController.h"

@interface UserAgreementViewController ()
@property (nonatomic,strong) NSString *userAgreementString;
@property (nonatomic,strong) UITextView *textView;

@end

@implementation UserAgreementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
        软件许可使用协议
     */
    
    [self navigationBarMethod];
    [self userAgreementContentMethod];
    [self userAgreementContentLayoutMethod];
}
-(void)navigationBarMethod{
    //导航栏设置方法
    UILabel *wire=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
    wire.backgroundColor = [UIColor colorWithRed:(143/255.0) green:(45/255.0) blue:(188/255.0) alpha:1];
    [self.view addSubview:wire];
    
    UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 44)];
    label.text=@"软件许可使用协议";
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
-(void)userAgreementContentLayoutMethod{
    //软件许可使用协议文件布局方法
    self.textView=[[UITextView alloc] init ];
    self.textView.frame=CGRectMake(30, 84, self.view.bounds.size.width-60, self.view.bounds.size.height-114);
    self.textView.text=self.userAgreementString;
    self.textView.editable=NO;
    [self.view addSubview:self.textView];
}
-(void)userAgreementContentMethod{
    //软件许可使用协议声明内容方法
    self.userAgreementString=@"             尊敬的用户，欢迎阅读懒猪社区APP使用许可协议\n    本服务协议双方为杭州君爵信息科技有限公司旗下APP“懒猪社区”（下称 “懒猪社区”）与懒猪社区APP用户，本服务协议具有合同效力。   \n    本服务协议内容包括协议正文及所有懒猪社区已经发布的或将来可能发布的各类规则。所有规则为协议不可分割的一部分，与协议正文具有同等法律效力。    \n  在本服务协议中没有以“规则”字样表示的链接文字所指示的文件不属于本                    服务协议的组成部分，而是其他内容的协议或有关参考资料，与本协议没有法律上的直接关系。 \n  用户在使用懒猪社区提供的各项服务的同时，承诺接受并遵守各项相关规则的规定。懒猪社区有权根据需要不时地制定、修改本协议或各类规则，如本协议有任何变更，懒猪社区将在APP上刊载公告，通知予用户。如用户不同意相关变更，必须停止使用“服务”。经修订的协议一经在懒猪社区APP公布后，立即自动生效。各类规则会在发布后生效，亦成为本协议的一部分。登录或继续使用“服务”将表示用户接受经修订的协议。除另行明确声明外，任何使“服务”范围扩大或功能增强的新内容均受本协议约束。   \n  用户确认本服务协议后，本服务协议即在用户和懒猪社区之间产生法律效力。请用户务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向懒猪社区咨询。   \n  无论用户事实上是否在注册之前认真阅读了本服务协议，只要用户点击协议正本下方的“确认”按钮并按照懒猪社区注册程序成功注册为用户，用户的行为仍然表示其同意并签署了本服务协议。   \n  定义  \n  懒猪社区APP为一款全新的网上购物软件，由回家、周边商圈、原产地商城三大服务模块组成，重点服务于中高档小区。  \n  懒猪社区的用户：    \n  用户为具备完全民事行为能力的自然人，或者是具有合法经营资格的实体组织。 \n  无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为懒猪社区用户或超过其民事权利或行为能力范围从事交易的，其与懒猪社区之间的服务协议自始无效，懒猪社区一经发现，有权立即注销该用户，并追究其使用懒猪社区“服务”的一切法律责任。    \n用户注册： \n  用户注册是指用户登录懒猪社区网站，并按要求填写相关信息并确认同意履行相关用户协议的过程。    \n  用户帐号、密码 在安全完成本服务的登记程序并收到一个密码及帐号后，用户应维持密码及帐号的机密安全。您应对任何人利用您的密码及帐号所进行的活动负完全的责任，懒猪社区无法对非法或未经您授权使用您帐号及密码的行为作出甄别，因此懒猪社区不承担任何责任。  \n  用户的权利和义务    \n  懒猪社区为生活类购物交易平台。懒猪社区只能部分控制交易所涉及的产品的质量、安全或合法性，商贸信息的真实性或准确性，以及交易方履行其在贸易协议下的各项义务的能力。例如：货款的收付、发票的收发、货品的配送、货品送达的及时性和准确性、货品最新种类及价格的发布、客户信息100%的准确性等。懒猪社区倡导诚信交易，并为此提供一系列的解决方案。  \n  用户的权利：  \n  用户有权利拥有自己在懒猪社区APP上的用户名及密码，并有权利使用自己的用户名及密码随时登录懒猪社区APP进行浏览、选购，用户不得以任何形式擅自转让或授权他人使用自己的懒猪社区APP用户名；  \n  用户有权利对懒猪社区的服务做出评价和投诉，并提出建议和意见；  \n  用户的义务：  \n  用户有义务在注册时提供自己的真实资料，并保证诸如电子邮件地址、联系电话、联系地址、邮政编码等内容的有效性及安全性，保证懒猪社区及其他用户可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。用户保证不以他人资料在懒猪社区APP上进行注册或认证。 \n  懒猪社区商户同意接收来自懒猪社区APP或者懒猪社区APP合作伙伴发出的邮件、信息。   \n  懒猪社区的义务：    \n  懒猪社区有义务在现有技术上维护整个APP购物交易平台的正常运行，并努力提升和改进技术，使用户在APP购物平台上的交易活动得以顺利进行。 \n  对用户在注册使用懒猪社区APP购物平台期间所遇到的与交易或注册有关的问题及反映的情况，懒猪社区应及时做出回复。 \n  服务的中断和终止    \n  1.用户同意  \n  在懒猪社区未向用户收取服务费的情况下，懒猪社区可自行全权决定以任何理由 (包括但不限于懒猪社区认为用户已违反本协议的字面意义和精神，或以不符合本协议的字面意义和精神的方式行事，或用户在超过90天的时间内未以用户的账号及密码登录网站等) 终止用户的“服务”密码、账户 (或其任何部份) 或用户对“服务”的使用，并删除（不再保存）用户在使用“服务”中提交的任何资料。   \n  同时懒猪社区可自行全权决定，在发出通知或不发出通知的情况下，随时停止提供“服务”或其任何部份。账号终止后，懒猪社区没有义务为用户保留原账号中或与之相关的任何信息，或转发任何未曾阅读或发送的信息给用户或第三方。此外，用户同意，懒猪社区不会终止用户接入“服务”而对用户或任何第三者承担任何责任；   \n  2. 如用户向懒猪社区提出注销懒猪社区网站注册用户身份时，经懒猪社区审核同意，由懒猪社区注销该注册用户，用户即解除与懒猪社区的服务协议关系。但注销该用户账号后，懒猪社区仍保留下列权利：    \n  用户注销后，懒猪社区有权保留该用户的注册资料及以前的交易行为记录。   \n  用户注销后，如用户在注销前在懒猪社区APP购物平台上存在违法行为或违反合同的行为，懒猪社区仍可行使本服务协议所规定的权利。   \n  3. 在下列情况下，懒猪社区可以通过注销用户的方式终止服务：  \n  在用户违反本服务协议相关规定时，懒猪社区有权终止向该用户提供服务。懒猪社区将在中断服务时通知用户。但如该用户在被懒猪社区终止提供服务后，再一次直接或间接或以他人名义注册为懒猪社区用户的，懒猪社区有权再次单方面终止向该用户提供服务； \n  如懒猪社区通过用户提供的信息与用户联系时，发现用户在注册时填写的电子邮箱已不存在或无法接收电子邮件的，经懒猪社区以其他联系方式通知用户更改，而用户在三个工作日内仍未能提供新的电子邮箱地址的，懒猪社区有权终止向该用户提供服务；    \n  一旦懒猪社区发现用户注册资料中主要内容是虚假的，懒猪社区有权随时终止向该用户提供服务； \n  本服务协议终止或更新时，用户明示不愿接受新的服务协议的；    \n  其它懒猪社区认为需终止服务的情况。   \n  4.服务中断、终止之前用户交易行为的处理    \n  因用户违反法律法规或者违反服务协议规定而致使懒猪社区中断、终止对用户服务的，对于服务中断、终止之前用户交易行为依下列原则处理： \n  服务中断、终止之前，用户已经上传至懒猪社区网站的产品尚未交易或尚未交易完成的，懒猪社区有权在中断、终止服务的同时删除此项物品的相关信息；    \n  服务中断、终止之前，用户已经就其他用户出售的具体产品做出要约，但交易尚未结束，懒猪社区有权在中断或终止服务的同时删除该用户的相关要约； \n  责任范围    \n  1.用户明确理解和同意，懒猪社区不对因下述任一情况而导致的任何损害赔偿承担责任，包括但不限于利润、商誉、使用、数据等方面的损失或其他无形损失的损害赔偿 (无论懒猪社区是否已被告知该等损害赔偿的可能性)：   \n  使用或未能使用“服务”；    \n  第三方未经批准的接入或第三方更改用户的传输资料或数据； \n  第三方对“服务”的声明或关于“服务”的行为；或非因懒猪社区的原因而引起的与“服务”有关的任何其他事宜，包括疏忽。    \n  2.用户明确理解并同意，如因其违反有关法律或者本协议之规定，使懒猪社区遭受任何损失，受到任何第三方的索赔，或任何行政管理部门的处罚，用户应对懒猪社区提供补偿，包括合理的律师费用。   \n  隐私权政策   \n  1.适用范围： \n  在用户注册懒猪社区账户时，用户根据懒猪社区要求提供的个人注册信息；   \n  在用户使用懒猪社区服务，参加懒猪社区活动，或访问懒猪社区APP页面时，懒猪社区自动接收并记录的用户浏览器上的服务器数值，包括但不限于IP地址等资料及用户要求取用的网站页记录；懒猪社区收集到的用户在懒猪社区进行购物的有关资料，包括但不限于出价、购买、产品登录、信用评价及违规记录；懒猪社区通过合法途径从商业伙伴处取得的用户个人资料。   \n  2. 信息使用：    \n  懒猪社区不会向任何人出售或出借用户的个人信息，除非事先得到用户的许可； \n  懒猪社区亦不允许任何第三方以任何手段收集、编辑、出售或者无偿传播用户的个人信息。任何用户如从事上述活动，一经发现，懒猪社区有权立即终止与该用户的服务协议，查封其账号； \n  本着为更好服务用户的目的，懒猪社区可能通过使用用户的个人信息，向用户提供服务，包括但不限于向用户发出产品和服务信息，或者与懒猪社区合作伙伴共享信息以便他们向用户发送有关其产品和服务的信息（后者需要用户的事先同意）。 \n  3. 信息披露：    \n  用户的个人信息将在下述情况下部分或全部被披露： \n  经用户同意，向第三方披露；   \n  如用户是合资格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷；    \n  根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露； \n  如果用户出现违反中国有关法律或者网站政策的情况，需要向第三方披露；   \n  为提供你所要求的产品和服务，而必须和第三方分享用户的个人信息； \n  其他懒猪社区根据法律或者网站政策认为合适的披露；    \n  4. 信息安全：    \n  懒猪社区账户均有密码保护功能，请妥善保管用户的账户及密码信息； \n  如果用户发现自己的个人信息泄密，尤其是懒猪社区账户或及密码发生泄露，请用户立即联络懒猪社区客服，以便懒猪社区采取相应措施。   \n  5. 编辑和删除个人信息的权限：    \n  用户可以点击我的懒猪社区对用户的个人信息进行编辑和删除，除非懒猪社区另有规定。 \n  6. 政策修改：    \n  懒猪社区保留对本政策做出不时修改的权利。";
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
