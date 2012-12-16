//
//  PhpApiViewController.h
//  PHPApiTestProj
//
//  Created by Lynn on 12-11-13.
//  Copyright (c) 2012年 WiMi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ServerRequest.h"

@interface PhpApiViewController : UIViewController <ServerRequestDelegate>

/**
 *
 *乘客端PHP API接口测试函数
 *
 **/

/****************************PHP接口文档编号0.doc****************************/

//获取配置项的值
- (void) getConfigItem;

//获取服务器地址
- (void) getConfigServer;



/****************************PHP接口文档编号1.doc****************************/

//注册新帐户
- (void) regist;

//用户登录
- (void) login;

//新浪微博会员登录
- (void) loginByThirdParty;

//找回密码
- (void) forgetPassword;

//编辑个人资料/密码
- (void) editMyselfInfomation;

//取得用户详细资料
- (void) getMyselfInfomation;

//检测帐户是否存在
- (void) isExist;

//设置当前用户状态
- (void) setCurrentStatus;


/****************************PHP接口文档编号3.doc****************************/

//添加好友
- (void) addFriend;

//删除好友
- (void) deleteFriend;

//添加地址
- (void) addAddress;

//查询常去地址
- (void) getAddress;

//编辑常去地址
- (void) editAddress;

//删除常去地址
- (void) deleteAddress;

//充值
- (void) addMoney;

//查看聊天记录列表
- (void) getRecordList;

//聊天详细信息
- (void) getDetailRecord;

//发送聊天信息
- (void) sendMessage;

/****************************PHP接口文档编号4.doc****************************/

//创建预约信息
- (void) createOrder;

//搜索预约列表
- (void) getOrderList;

//查询预约详细资料
- (void) getDetailOrder;

//响应预约（建立预约关联）
- (void) createOrderRelate;

//设置预约状态
- (void) setOrderStatus;

//发布评论
- (void) sendComment;

//取得评论列表
- (void) getCommentList;


/****************************PHP接口文档编号5.doc****************************/

//创建订单
- (void) createOrderForm;

//修改订单金额
- (void) editOrderForm;

//查看订单详细信息
- (void) getOrderFormDetal;

//支付
- (void) payOrderForm;

//支付后支付宝回调
- (void) alipayNotifyOrderForm;

//获取通用签名数据
- (void) getPayMessage;

//查看订单列表
- (void) getOrderFormList;


/****************************PHP接口文档编号6.doc****************************/

//增加协同安全好友
- (void) addSyncsafeFriend;

//取得协同安全好友
- (void) getSyncsafeFriends;

//删除协同安全好友
- (void) deleteSyncsafeFriend;

//设置协同安全
- (void) setSyncsafeStatus;

/**
 *
 *车载端PHP API接口测试函数
 *
 **/

//根据车牌取得该车的司机列表
- (void) getCarDrivers;

//登录
- (void) loginDriver;

//设置司机状态
- (void) setDriverStatus;

//

/****************************PHP接口文档编号2.doc****************************/

//邀请好友
- (void) inviteFriend;

//删除好友
- (void) deleteDriverFriend;

//取得出租车信息
- (void) getCarInformation;

//取得出租车公司信息
- (void) getCarCompanyInformation;

//营业额统计
- (void) getCountMoney;

//取得统计数据
- (void) getData;
@end
