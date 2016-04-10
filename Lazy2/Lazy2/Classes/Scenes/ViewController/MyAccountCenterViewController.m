//
//  MyAccountCenterViewController.m
//  Lazy2
//
//  Created by yinqijie on 16/4/8.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "MyAccountCenterViewController.h"
#import "MacroDefinition.h"
#import "MyLazyAccountNumberClassTableViewCell.h"
@interface MyAccountCenterViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *myCenterTableView;
@property (nonatomic,strong)MyLazyAccountNumberClassTableViewCell *cell;

@end

@implementation MyAccountCenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
        我的账号
     */
    [self addTableViewWay];
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
        
    }
    return self.cell;
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
