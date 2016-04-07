//
//  AddAddressViewController.m
//  Lazy2
//
//  Created by yinqijie on 16/4/7.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import "AddAddressViewController.h"
#import "MacroDefinition.h"
@interface AddAddressViewController ()

@end

@implementation AddAddressViewController

- (void)viewWillAppear:(BOOL)animated{
    [self.mapView viewWillAppear];
    //记得此处不用的时候要置为nil
    self.mapView.delegate=self;
}
- (void)viewWillDisappear:(BOOL)animated{
    [self.mapView viewWillDisappear];
    //不用时  置 nil
    self.mapView.delegate=nil;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self navigationBackgroundWay];
    [self addBMKMapWay];
    [self addTableViewWay];
}
#pragma mark    导航栏设置
- (void)navigationBackgroundWay{
    UILabel *navigation=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, Main_Screen_Width, 64)];
    navigation.backgroundColor=[UIColor redColor];
    [self.view addSubview:navigation];
    
    UILabel *title=[[UILabel alloc] initWithFrame:CGRectMake(80, 20, Main_Screen_Width-160, 44)];
    title.text=@"添加地址";
    title.textColor=[UIColor whiteColor];
    title.textAlignment=NSTextAlignmentCenter;
    title.font = [UIFont boldSystemFontOfSize:20];
    [self.view addSubview:title];
    
    UIButton *back=[[UIButton alloc] initWithFrame:CGRectMake(10, 20, 44, 44)];
    [back setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(backTouchClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:back];
}
- (void)backTouchClick{
    
}
#pragma mark    百度地图定位设置
- (void)addBMKMapWay{
    self.locationService=[[BMKLocationService alloc] init];
    self.locationService.delegate=self;
    //普通态，以mapView为BMKMAPView对象  显示定位图层
    self.mapView.showsUserLocation=YES;
    [self.mapView updateLocationData:self.locationService.userLocation];
    //启动LocationService
    [self.locationService startUserLocationService];
    //先关闭显示的定位图层
    self.mapView.showsUserLocation=NO;
    //设置定位的状态
    self.mapView.userTrackingMode = BMKUserTrackingModeNone;
    //显示定位图层
    self.mapView.showsUserLocation=YES;
}
#pragma mark    加载 TableView
- (void)addTableViewWay{
    self.addressTableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 64, Main_Screen_Width, Main_Screen_Height-64)];
    self.addressTableView.delegate=self;
    self.addressTableView.dataSource=self;
    [self.addressTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:self.addressTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 360;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"ManageAddressTableViewClass";
    
    [self.addressTableView registerClass:[AddAddressClassTableViewCell class] forCellReuseIdentifier:CellIdentifier];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
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
