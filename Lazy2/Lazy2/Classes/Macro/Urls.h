//
//  Urls.h
//  Lazy2
//
//  Created by 君爵信息科技 on 16/3/23.
//  Copyright © 2016年 Wangxue. All rights reserved.
//

#ifndef Urls_h
#define Urls_h

//http://junjuekeji.com

//1.获取验证码
#define SecurityCodeURL @"http://junjuekeji.com/appServlet?requestCode=A01&phoneNumber=%@"

//2.获取用户信息
#define UserInfoURL @"http://junjuekeji.com/appServlet?requestCode=A02&phoneNumber=%@"

//3.创建用户接口（第三方登录时）
#define CreateUserURL @"http://junjuekeji.com/appServlet?requestCode=A03&phoneNumber=%@&loginName=%@&passwd=%@&loginType=%@"

//4.修改用户信息接口
#define UpdateUserInfoURL @"http://junjuekeji.com/appServlet?requestCode=A04&phoneNumber=%@&mail=%@&sexType=2&nickName=%@&birthday=%@"

//5.重置密码接口
#define ResetPasswordURL @"http://junjuekeji.com/appServlet?requestCode=A05&loginName=%@&passwd=%@&registerKey=%@"

//6.验证码校验接口
#define VerifySecurityCodeURL @"http://junjuekeji.com/appServlet?requestCode=A06&phoneNumber=%@&registerKey=%@"

//7.商品信息获取接口
#define GetGoodsInfoURL @"http://junjuekeji.com/appServlet?requestCode=B01&displayType=%@&prodType=%@&panicFlag=%@"


//8.商品详细信息获取接口
#define GetGoodsDetailURL @"http://junjuekeji.comv/appServlet?requestCode=B02&prodId=%@"

//9.增加购物车商品
#define AddGoodsToCarURL @"http://junjuekeji.com/appServlet?requestCode=C01&loginName=%@&prodId=%@&prodNumber=%@"

//10.更新购物车商品
#define UpdateGoodsCarURL @"http://junjuekeji.com/appServlet?requestCode=C02&cartId=%@&prodNumber=%@"

//11.删除购物车商品
#define DeleteGoodsFromCarURL @"http://junjuekeji.com/appServlet?requestCode=C03&loginName=%@"

//12.获取用户购物车商品
#define GetGoodsFromCarURL @"http://junjuekeji.com/appServlet?requestCode=C04&loginName=%@"

//13.增加收货地址
#define AddAddressURL @"http://junjuekeji.com/appServlet?requestCode=C05&loginName=aa&addrUserName=%@&addrPhone=%@&proinceUrl=%@&cityUrl=%@&areaUrl=%@&villageUrl=%@&houseUrl=%@&firstFlag=%@"

//14.更新收货地址
#define UpdateAddressURL @"http://junjuekeji.com/appServlet?requestCode=C06&addrUserName=%@&addrId=%@&addrPhone=%@&proinceUrl=%@&cityUrl=%@&areaUrl=%@&villageUrl=%@&houseUrl=%@&firstFlag=%@"

//15.删除收货地址
#define DeleteAddressURL @"http://junjuekeji.com/appServlet?requestCode=C07&addrId=%@"

//16.查询收货地址(que yi ge)
#define FindAddressURL @"http://junjuekeji.com/appServlet?requestCode=C08&loginName=%@"

//17.增加订单接口
#define AddOrderURL @"http://junjuekeji.com/appServlet?requestCode=D01&loginName=%@&amount=%@&prodStr=%@&addrId=%@&demo=%@"

//18.取消订单
#define DeleteOrderURL @"http://junjuekeji.comv/appServlet?requestCode=D02&subpCode=%@&demo=%@"

//19.订单支付
#define PayURL @"http://junjuekeji.com/appServlet?requestCode=D03&subpCode=%@&payType=%@&payAccount=%@"

//20.查询订单
#define FindOrderURL @"http://junjuekeji.com/appServlet?requestCode=D04&loginName=%@"

//21.订单明细
#define OrderDetailURL @"http://junjuekeji.com/appServlet?requestCode=D05&subpCode=%@"

#warning 暂时不启用
//22.订单申请退货
#define ReturnGoodsURL @"http://junjuekeji.com/appServlet?requestCode=D06&subpCode=%@&demo=%@"

//23.确认收货
#define TakeGoodsURL @"http://junjuekeji.com/appServlet?requestCode=D07&subpCode=%@"

//24.删除订单




#endif /* Urls_h */
