//
//  ShareData.h
//  PHPApiTestProj
//
//  Created by Lynn on 12-11-14.
//  Copyright (c) 2012年 WiMi. All rights reserved.
//

#ifndef PHPApiTestProj_ShareData_h
#define PHPApiTestProj_ShareData_h

#ifdef DEBUG 
#define LRAssert(x) assert(x)
#else
#define LRAssert(x)
#endif

//device token
#define LR_DEVICE_TOKEN            @"LR_DEVICE_TOKEN"



/**
 *
 *base url
 *
 **/

#define    BASE_URL                 @"http://192.168.1.110:100/index.php/cfrontend/"




/**
 *
 *乘客component url
 *
 **/

/***********************PHP接口文档编号0.doc***************************/
#define    GET_CONFIG_ITEM          @"config/getItem"
#define    GET_CONFIG_SERVER        @"config/getServer"


/***********************PHP接口文档编号1.doc***************************/
#define    REGIST                   @"uaccount/register"
#define    LOGIN                    @"uaccount/login"
#define    LOGIN_BY_THIRDPARTY      @"uaccount/loginByThirdParty"
#define    FORGRT_PASSWORD          @"uaccount/forgetPassword"
#define    EDIT_MYSEL_INFOMATION    @"uaccount/edit"
#define    GET_MYSEL_INFOMATION     @"uaccount/getDetail"
#define    IS_ESIST                 @"uaccount/isExists"
#define    SET_CURRENT_STATUS       @"uaccount/setStatus"

/***********************PHP接口文档编号3.doc***************************/
#define    ADD_FRIEND               @"passenger/inviteFriend"
#define    DELETE_FRIEND            @"passenger/deleteFriend"
#define    ADD_ADDRESS              @"passenger/addAddress"
#define    GET_ADDRESS              @"passenger/getAddress"
#define    EDIT_ADDRESS             @"passenger/editAddress"
#define    DELETE_ADDRESS           @"passenger/deleteAddress"
#define    ADD_MONEY                @"passenger/addMoney"
#define    GET_RECORD_LIST          @"passenger/getRecordList"
#define    GET_DETAIL_RECORD        @"passenger/getRecords"
#define    SEND_MESSAGE             @"passenger/sendMessage"

/***********************PHP接口文档编号4.doc***************************/
#define    CREATE_ORDER             @"order/create"
#define    GET_ORDER_LIST           @"order/getOrderList"
#define    GET_DETAIL_ORDER         @"order/getDetail"
#define    CREATE_ORDER_RELATE      @"order/createRelate"
#define    SET_ORDER_STATUES        @"order/setStatus"
#define    CREATE_COMMENT           @"order/createComment"
#define    GET_ORDER_COMMENT        @"order/getComments"

/***********************PHP接口文档编号5.doc***************************/
#define    CREATE_ORDERFORM         @"orderform/create"
#define    EDIT_ORDERFORM           @"orderform/edit"
#define    GET_ORDERFORM_DETAIL     @"orderform/getDetail"
#define    PAY_ORDERFORM            @"orderform/pay"
#define    ALIPAYNOTIFY_ORDERFORM   @"orderform/alipaynotify"
#define    GET_PAY_MESSAGE          @"orderform/getPayMessage"
#define    GET_ORDERFORM_LIST       @"orderform/getList"


/***********************PHP接口文档编号6.doc***************************/
#define    ADD_SYNERGSAFE_FRIEND    @"synergysafe/addFriend"
#define    GET_SYNERGSAFE_FRIEND    @"synergysafe/getFriends"
#define    DELETE_SYNERGSAFE_FRIEND @"synergysafe/getFriends"
#define    SET_SYNERGSAFE_STATUES   @"synergysafe/setStatus"


/**
 *
 *驾驶员component url
 *
 **/
/***********************PHP接口文档编号1.doc***************************/
#define    GET_CAR_DRIVERS              @"uaccount/getCarDrivers"
#define    LOGIN_DRIVER                 @"uaccount/loginDriver"
#define    SET_DRIVER_STATUS            @"uaccount/setStatusDriver"


/***********************PHP接口文档编号2.doc***************************/
#define    INVITE_FRIEND                @"driver/inviteFriend"
#define    DELETE_DRIVER_FRIEND         @"driver/deleteFriend"
#define    GET_CAR_INFORMATION          @"driver/getCarInformation"
#define    GET_CAR_COMPANY_INFOMATION   @"driver/getCarCompanyInformation"
#define    GET_MONEY                    @"driver/getMoney"
#define    GET_DATA                     @"driver/getData"

/**
 *拍居Api测试
 **/
#define   PAIJU_BASE_URL                @"http://www.payju.com/mobileApi/index.php"

#endif
