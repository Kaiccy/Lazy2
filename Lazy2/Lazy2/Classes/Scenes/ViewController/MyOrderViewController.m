//
//  MyOrderViewController.m
//  Lazy2
//
//  Created by 君爵信息科技 on 16/4/5.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "MyOrderViewController.h"
#import "MyOrderTableViewCell.h"

@interface MyOrderViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *navigationBack;
@property (weak, nonatomic) IBOutlet UITableView *myOrderTableView;
@property (nonatomic,strong)MyOrderTableViewCell *cell;

@end

@implementation MyOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
#pragma  mark   TableViewDelegate Way
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *addCell = @"MyOrderTableViewCell";
    self.cell= [tableView dequeueReusableCellWithIdentifier:addCell];
    if (!self.cell) {
        self.cell = [[MyOrderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:addCell];
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
