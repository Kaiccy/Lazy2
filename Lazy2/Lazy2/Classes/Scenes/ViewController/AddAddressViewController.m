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

@property (nonatomic,strong)NSString *province;//省市区
@property (nonatomic,strong)NSString *community;//小区
@property (nonatomic,strong)AddAddressClassTableViewCell *cell;

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
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8) {
        //由于IOS8中定位的授权机制改变 需要进行手动授权
        CLLocationManager  *locationManager = [[CLLocationManager alloc] init];
        //获取授权认证
        [locationManager requestAlwaysAuthorization];
        [locationManager requestWhenInUseAuthorization];
    }
    self.mapView=[[BMKMapView alloc] init];
    [self.mapView setMapType:BMKMapTypeStandard];
    self.mapView.zoomLevel=21;
    self.locationService=[[BMKLocationService alloc] init];
    self.locationService.delegate=self;
    //启动LocationService
    [self.locationService startUserLocationService];
    //普通态，以mapView为BMKMAPView对象  显示定位图层
    self.mapView.showsUserLocation=YES;
    [self.mapView updateLocationData:self.locationService.userLocation];
    //设置定位的状态
    self.mapView.userTrackingMode = BMKUserTrackingModeNone;
}
//用户位置更新后，会调用此函数
- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation{
    [_mapView updateLocationData:userLocation];
    _mapView.centerCoordinate=userLocation.location.coordinate;
    NSLog(@"现在所处经纬度为： %@",userLocation.heading);
    NSLog(@"%@,%@",userLocation.title,userLocation.subtitle);
}
//实现相关delegate 处理位置信息更新 处理方向变更信息  用户方向更新后，会调用此函数
- (void)didUpdateUserHeading:(BMKUserLocation *)userLocation{
    [_mapView updateLocationData:userLocation];
    _mapView.centerCoordinate = userLocation.location.coordinate;
    NSLog(@"现在所处经纬度为： %@",userLocation.heading);
    NSLog(@"%@,%@",userLocation.title,userLocation.subtitle);
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
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 360;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *addCell = @"AddAddressClassTableViewCell";
    self.cell= [tableView dequeueReusableCellWithIdentifier:addCell];
    if (!self.cell) {
        self.cell = [[AddAddressClassTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:addCell];
        self.cell.selectionStyle = UITableViewCellSelectionStyleNone;
        self.cell.consigneeTextField.text=@"葛飞";
        self.cell.phoneNumberTextField.text=@"18303990502";
        self.cell.houseNumberTextField.text=@"888";
        [self.cell.provincialAreasButton addTarget:self action:@selector(provincialAreadButtonTouchClick) forControlEvents:UIControlEventTouchUpInside];
        [self.cell.locationCommunityButton addTarget:self action:@selector(locationCommunityButtonTouchClick) forControlEvents:UIControlEventTouchUpInside];
        [self.cell.saveAddress addTarget:self action:@selector(saveAddressButtonTouchClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self.cell;
}
#pragma  mark   添加地址cell的点击事件
- (void)provincialAreadButtonTouchClick{
    //定位省市区
    self.cell.provincialAreasTextField.text=self.province;
}
- (void)locationCommunityButtonTouchClick{
    //定位小区
    self.cell.locationCommunityTextField.text=self.community;
}
- (void)saveAddressButtonTouchClick{
    //保存所添加的地址
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
