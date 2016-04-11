//
//  AfeiLazyCustomNavigation.h
//  Lazy2
//
//  Created by yinqijie on 16/4/10.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#ifndef AfeiLazyCustomNavigation_h
#define AfeiLazyCustomNavigation_h
//自定义导航栏
#define AFEINAVIGATIONMACRO(AfeiCustomNavigationTitle) \
UILabel *navigationLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, Main_Screen_Width, 64)];\
navigationLabel.backgroundColor=[UIColor redColor];\
[self.view addSubview:navigationLabel];\
UILabel *navigationTitle=[[UILabel alloc] initWithFrame:CGRectMake(80, 20, Main_Screen_Width-160, 44)];\
navigationTitle.text=AfeiCustomNavigationTitle;\
navigationTitle.textColor=[UIColor whiteColor];\
navigationTitle.textAlignment=NSTextAlignmentCenter;\
navigationTitle.font = [UIFont boldSystemFontOfSize:20];\
[self.view addSubview:navigationTitle];\
UIButton *navigationBack=[[UIButton alloc] initWithFrame:CGRectMake(10, 20, 44, 44)];\
[navigationBack setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];\
[navigationBack addTarget:self action:@selector(backTouchClick) forControlEvents:UIControlEventTouchUpInside];\
[self.view addSubview:navigationBack];


#endif /* AfeiLazyCustomNavigation_h */
