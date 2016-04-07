//
//  AddAddressViewController.h
//  Lazy2
//
//  Created by yinqijie on 16/4/7.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#import <UIKit/UIKit.h>
//引入base相关所有的头文件
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
//引入地图功能所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>
//引入检索功能所有的头文件
#import <BaiduMapAPI_Search/BMKSearchComponent.h>
//引入云检索功能所有的头文件
#import <BaiduMapAPI_Cloud/BMKCloudSearchComponent.h>
//引入定位功能所有的头文件
#import <BaiduMapAPI_Location/BMKLocationComponent.h>
//引入计算工具所有的头文件
#import <BaiduMapAPI_Utils/BMKUtilsComponent.h>
//引入周边雷达功能所有的头文件
#import <BaiduMapAPI_Radar/BMKRadarComponent.h>

#import "AddAddressClassTableViewCell.h"

@interface AddAddressViewController : UIViewController<BMKMapViewDelegate,BMKLocationServiceDelegate,BMKGeoCodeSearchDelegate,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *addressTableView;
@property (nonatomic,strong)CLLocation *cllocation;
@property (nonatomic,strong)BMKMapView *mapView;
@property (nonatomic,strong)BMKLocationService *locationService;
@property (nonatomic,strong)BMKGeoCodeSearch *geoCodeSearch;
@property (nonatomic,strong)BMKReverseGeoCodeOption *reverseGeoCodeOption;

@end
