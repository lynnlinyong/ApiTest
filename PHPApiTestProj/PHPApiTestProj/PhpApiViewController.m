//
//  PhpApiViewController.m
//  PHPApiTestProj
//
//  Created by Lynn on 12-11-13.
//  Copyright (c) 2012年 WiMi. All rights reserved.
//
#import "JSON.h"
#import "NSString+Md5.h"
#import "ServerRequest.h"
#import "PhpApiViewController.h"

@interface PhpApiViewController ()

@end

@implementation PhpApiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    [self lbRegist];
    [self lbLogin];
//    [self lbGetUserInfo];
//    [self lbEditeUserInfo];
//    [self lbGetUserInfo];
//    [self lbUpdateLoacation];
//    [self lbGetPwd];
//
    
//    [self lbNewGroup];
//    [self lbEditGroup];
//    [self lbDeleteGroup];
    
    [self lbGetChatList];
    
//    [self lbJoinMember];   //需要加入数据
//    [self lbRemoveMember]; //需要加入数据
//    [self lbRGetGroupInfo];
//    [self lbRAddGroupLight];
//    [self lbRgetAllGroupLight];
//    [self lbRDelGroupLight];
//2.加好友请求要按照MQTT添加,请求,需要列表出那些就接口要用MQT，

    
    
    /**
     *拍居Api
     **/
//    [self PaiJuRegist];
//    [self PaijuLogin];
//    [self PaijuForgetPwd];
//    [self PaijuEdit];
//    [self PaijuGetinfo];
//    [self PaijuIsExsit];
//    [self PaijuGetList];
//    [self PaijuGetContactData];
//    [self PaijuRecharge];
//    [self PaijuSearchOrder];
//    [self PaijuGetOrderDetail];
//    [self PaijuFllowList];
//    [self PaijuGetImageList];
//    [self PaijuFllowProduct];
//    [self PaijuAddComment];
//    [self PaijuGetCommentList];
    
    /**
     *拍居竞价
     **/
//    [self PaijuPayTradeForBuy];
    
    /**
     *拍居商品Api
     **/
//    [self PaijuElites];
//    [self PaijuGetClass];
//    [self PaijuGetClassList];
//    [self PaijuSearch];
//    [self PaijuPudDetail];
//    [self PaijuMakeOrder];
//    [self PaijuGetOrderList];
    
    /**
     *1510 
     **/
/****************************1.doc****************************/
    //    [self cmsRegist];
//    [self cmsLogin];
    //    [self cmsForgetPwd];
    //    [self cmsLogout];
    //    [self cmsEditInfo];
    //    [self cmsGetDetail];
    //    [self cmsIsExists];

/****************************3.doc****************************/
//    [self cmsGetClassItem];
//    [self cmsGetList];
//    [self cmsGetPudDetail];
//    [self cmsAddComment];     //评论不正确，少了长评，简评.参数中又一个平分.
//    [self cmsGetCommentList];
//    [self cmsCountBuy];       

/****************************4.doc****************************/
//    [self cmsGetMarketList];

/****************************5.doc****************************/
//    [self cmsGetTryList]; 
//    [self cmsGetTryDetail];
//    [self cmsTryApply];
    
    
    
    
    /**
     *乘客
     **/

/****************************PHP接口文档编号0.doc****************************/
//    [self getConfigItem];
//    [self getConfigServer];
    
    
/****************************PHP接口文档编号1.doc****************************/
//    [self regist];
//    [self login];
//    [self forgetPassword];
//    [self loginByThirdParty];
//    [self editMyselfInfomation];
//    [self getMyselfInfomation];
//    [self setCurrentStatus];
//    [self isExist]; 
    
    
/****************************PHP接口文档编号3.doc****************************/
//    [self addFriend];
//    [self deleteFriend];
//    [self addAddress];
//    [self getAddress];
//    [self editAddress];
//    [self deleteAddress];
//    [self addMoney];
//    [self getRecordList];
//    [self getDetailRecord];
//    [self sendMessage];
    
    
/****************************PHP接口文档编号4.doc****************************/
//    [self createOrder];
    
    
/****************************PHP接口文档编号5.doc****************************/
//    [self createOrderForm];
//    [self getOrderFormDetal];
//    [self payOrderForm];
//    [self alipayNotifyOrderForm];
//    [self getPayMessage];
//    [self getOrderFormList];


/****************************PHP接口文档编号6.doc****************************/
//    [self addSyncsafeFriend];
//    [self getSyncsafeFriends];
//    [self deleteSyncsafeFriend];
//    [self setSyncsafeStatus];
    
    /**
     *驾驶员
     **/
//    [self getCarDrivers];
//    [self loginDriver];
//    [self setDriverStatus];
    
/****************************PHP接口文档编号2.doc****************************/
//    [self inviteFriend];
//    [self deleteDriverFriend];
//    [self getCarInformation];
//    [self getCarCompanyInformation];
//    [self getCountMoney];
//    [self getData];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void) lbRegist
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"deviceToken",@"data",nil];
//    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *dataParamsArray = [NSArray arrayWithObjects:@"gender", @"height",@"birth",@"spren",
                                                         @"regName",@"password",@"regType", nil];
    
    NSArray *dataValuesArray = [NSArray arrayWithObjects:[NSNumber numberWithInt:1], [NSNumber numberWithInt:167],@"1980-1-1",[NSNumber numberWithInt:1],
                                                         @"zhangsan1",@"zhangsan",[NSNumber numberWithInt:1], nil];
    
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:dataValuesArray forKeys:dataParamsArray];
    NSString *infoJson    = [infoDic JSONFragment];
    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",
                          @"deviceToken", infoJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/login/reg";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
    
//    userId=9
//    code=0
//    msg=
//    token=45AE822455B418D447DF923E1A3BD78BC355F3CD6C76C86C2C8B642B4DCC38DF==/
}

- (void) lbLogin
{
    NSArray *paramsArr  = [NSArray arrayWithObjects:@"sign",@"userName",@"password",@"loginType",nil];
    NSData  *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr  = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",
                          @"zhangsan1", @"zhangsan",[NSNumber numberWithInt:1], nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/login";//[[NSString stringWithFormat:BASE_URL]stringByAppendingString:SET_CURRENT_STATUS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbGetUserInfo
{
    NSArray *paramsArr  = [NSArray arrayWithObjects:@"sign",@"userId",nil];
    NSData  *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr  = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",
                           @"9", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/account/getUserInfo";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbEditeUserInfo
{
    NSArray *paramsArr  = [NSArray arrayWithObjects:@"sign",@"userId",@"data",nil];
    NSDictionary *userDic = [NSDictionary dictionaryWithObjectsAndKeys:@"1981-01-02",@"birth", nil];
    NSString *userJson    = [userDic JSONFragment];
    
    NSData  *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr  = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",
                        [NSNumber numberWithInt:9],userJson, nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/account/update";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbUpdateLoacation
{
    NSArray *paramsArr  = [NSArray arrayWithObjects:@"sign",@"userId",@"lat",@"lng",nil];
    
    NSData  *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr  = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",
                           [NSNumber numberWithInt:9],@"12.222",@"12.222", nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/account/updateLatLng";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}


- (void) lbGetPwd
{
    NSArray *paramsArr  = [NSArray arrayWithObjects:@"sign",@"loginName",nil];
    
    NSData  *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr  = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"zhangsan1", nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/account/getpwd";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbGetChatList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/getGroupLists";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbNewGroup
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupName",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"zhangsan", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/newGroup";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
//code = 0;
//count = 1;
//list =     (
//            {
//                "_id" =             {
//                    "$id" = 5396f8a6a6d4b27e058b4567;
//                };
//                cdate = 1402402982;
//                creator = 1;
//                icon = 0;
//                "is_top" = 0;
//                "token_name" = zhangsan;
//            }
//            );
//msg = "\U83b7\U53d6\U4f1a\U8bdd\U6210\U529f";

}

- (void) lbEditGroup
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",@"data",nil];
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjectsAndKeys:@"wangwu",@"groupName",@"9",@"isTop", nil];
    NSString *infoString  = [infoDic JSONFragment];
    
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"1", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"5396f8a6a6d4b27e058b4567",infoString, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/updateGroup";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbJoinMember
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",@"members",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *array = [NSArray arrayWithObjects:@"1", nil];
    NSString *jsonArray = [array JSONFragment];
    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"1", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"539a7416a6d4b26f058b4568",jsonArray, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/joinMember";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbDeleteGroup
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"1", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"53991fdca6d4b26f058b4567", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/delGroup";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbRemoveMember
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",@"members",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *members = [NSArray arrayWithObjects:@"1", nil];
    NSString *jsonStr = [members JSONFragment];
    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"539a7416a6d4b26f058b4568",jsonStr, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/removeMember";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbRAddFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"frdId",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"1", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"zhangsan", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/joinFrd";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbRAddFriendResp
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"frdId",@"status",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"1", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"zhangsan", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/joinFrdResp";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbRAddGroupLight
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",@"type",@"data",nil];
    NSDictionary *jsonDic = [NSDictionary dictionaryWithObjectsAndKeys:@"11",@"name",@"{sdfsdf:sdfsd}",@"settings",@"1",@"isDefault",nil];
    NSString *jsonString  = [jsonDic JSONFragment];
    
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"539a7416a6d4b26f058b4568",@"1",jsonString,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/addGroupLight";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}



- (void) lbRgetAllGroupLight
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",@"type",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"539a7416a6d4b26f058b4568",@"1", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/getGroupLight";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbRDelGroupLight
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",@"lgtId",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"539a7416a6d4b26f058b4568",[NSNumber numberWithInt:5], nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/delGroupLight";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) lbRGetGroupInfo
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"sign",@"userId",@"token",@"groupId",nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Ma99dK23#4mggrnm",@"9", @"20EABAF7EBFFB8C6DC61BBEC37519FC18D1CA47C299CA5A62CC442EB9D64871E==/",@"539a7416a6d4b26f058b4568", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = @"http://114.215.198.60/index.php/api/talk/getGroupInfo";
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSLog(@"resDic:%@", resDic);
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) setCurrentStatus
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"Status",nil];
    NSData  *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"4", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:SET_CURRENT_STATUS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) isExist
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"regist_test3@126.com", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:IS_ESIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getMyselfInfomation
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_MYSEL_INFOMATION];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) editMyselfInfomation
{
    //post字段
    NSArray *infoKeysArr    = [NSArray arrayWithObjects:@"FullName",@"Birth",@"Gender",
                                                        @"Address",@"PostCode",@"City",
                                                        @"PhoneNumber",@"MobileNumber",@"Password",
                                                        @"OldPassword", nil];
    
    //post值
    NSString *oldPwd = [@"321654" md5HexDigest];
    NSString *newPwd = [@"321654" md5HexDigest];
    NSArray  *infoValuesArr  = [NSArray arrayWithObjects:@"zhangsan", @"2011/11/15",[NSNumber numberWithInt:1],
                                                         @"shanghai", @"200090", @"shanghai",
                                                         @"123456789",@"123456789", newPwd,
                                                         oldPwd, nil];
    
    //post参数(Dictionary)
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:infoValuesArr
                   
                                                        
                                                        
                                                        
                                                        forKeys:infoKeysArr];
    //post参数(json NSString)
    NSString *infosJson   = [infoDic JSONFragment];
    NSLog(@"info json:%@", infosJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Data", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",infosJson,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:EDIT_MYSEL_INFOMATION];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) forgetPassword
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email", nil];
    
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"regist_test2@126.com", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:FORGRT_PASSWORD];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

/**
 *ERROR不会用
 **/
- (void) loginByThirdParty
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"AccountUID", @"LoginFrom", @"DeviceToken", nil];
    
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"lynn.linyong@gmail.com", @"WeiXin", devToken, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:LOGIN_BY_THIRDPARTY];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) login
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email", @"Password", @"DeviceToken", nil];
    
    NSString *pwd      = [@"321654" md5HexDigest];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"regist_test2@126.com", pwd, devToken, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:LOGIN];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) regist
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email", @"Password", @"DeviceToken", nil];
    
    NSString *pwd      = [@"123456" md5HexDigest];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"regist_test2@126.com", pwd, devToken, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:REGIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getConfigServer
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_CONFIG_SERVER];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getConfigItem
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"KeyName ",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"net", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_CONFIG_ITEM];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) setSyncsafeStatus
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"IsAllowJoint ",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"1", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:SET_SYNERGSAFE_STATUES];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) deleteSyncsafeFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"FriendID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"1", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:DELETE_SYNERGSAFE_FRIEND];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    //    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getSyncsafeFriends
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_SYNERGSAFE_FRIEND];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    //    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) addSyncsafeFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"FriendID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"1", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:ADD_SYNERGSAFE_FRIEND];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    //    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getOrderFormList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Offset", @"Rows", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"0", @"1" ,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_ORDERFORM_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    //    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getPayMessage
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"TradeNumber", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"1231231232", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_PAY_MESSAGE];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    //    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) alipayNotifyOrderForm
{
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:ALIPAYNOTIFY_ORDERFORM];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerGetRequest
                                       paramDic:nil
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif

}

- (void) payOrderForm
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"TradeNumber", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"1231231232", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:PAY_ORDERFORM];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
//    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getOrderFormDetal
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"TradeNumber", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                          @"1231231232", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_ORDERFORM_DETAIL];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) editOrderForm
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"TradeNumber", @"Money", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                                                   @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                                                   @"10", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:CREATE_ORDERFORM];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) createOrderForm
{
    //post字段
    NSArray *orderFormKeysArr     = [NSArray arrayWithObjects: @"Subject", @"Body", @"Money",
                                                               @"CDate", @"TradeNumber", nil];
    
    //post值
    NSArray  *orderFormValuesArr  = [NSArray arrayWithObjects: @"dache", @"bacuo",
                                                               @"60", @"2012/12/22", @"1231231232", nil];
    
    //post参数(Dictionary)
    NSDictionary *orderFormDic = [NSDictionary dictionaryWithObjects:orderFormValuesArr
                                                             forKeys:orderFormKeysArr];
    //post参数(json NSString)
    NSString *orderFormJson    = [orderFormDic JSONFragment];
    NSLog(@"comment json:%@", orderFormJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Data", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                                                   @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",
                                                   orderFormJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:CREATE_ORDERFORM];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getCommentList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"ReserID", @"Token", @"UID",@"Offset",@"Rows", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"60", @"0", @"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_ORDER_COMMENT];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) sendComment
{
    //post字段
    NSArray *commentKeysArr   = [NSArray arrayWithObjects: @"ReserID",@"Content",@"AccountID",
                                                           @"Score",nil];
    
    //post值
    NSArray  *commentValuesArr  = [NSArray arrayWithObjects: @"62", @"bacuo",
                                                             @"60", @"4", nil];
    
    //post参数(Dictionary)
    NSDictionary *commentDic = [NSDictionary dictionaryWithObjects:commentValuesArr
                                                           forKeys:commentKeysArr];
    //post参数(json NSString)
    NSString *commentJson    = [commentDic JSONFragment];
    NSLog(@"comment json:%@", commentJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Data",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", commentJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:CREATE_COMMENT];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) setOrderStatus
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Status",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"1" ,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:SET_ORDER_STATUES];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) createOrderRelate
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"DriverID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"61" ,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:CREATE_ORDER_RELATE];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif

}

- (void) getDetailOrder
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"ReserID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"220" ,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_ORDER_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getOrderList
{
    //post字段
    NSArray *orderKeysArr     = [NSArray arrayWithObjects: @"DepPlace",@"Destination",@"ServiceTime",
                                 @"Status",nil];
    
    //post值
    NSArray  *orderValuesArr  = [NSArray arrayWithObjects: @"shanghai", @"shanghai",
                                 @"2012/10/12",@"1",nil];
    
    //post参数(Dictionary)
    NSDictionary *orderDic = [NSDictionary dictionaryWithObjects:orderValuesArr
                                                         forKeys:orderKeysArr];
    //post参数(json NSString)
    NSString *orderJson    = [orderDic JSONFragment];
    NSLog(@"order json:%@", orderJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Offset", @"Rows", @"Where", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"0",@"1", orderJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_ORDER_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) createOrder
{
    //post字段
    NSArray *orderKeysArr     = [NSArray arrayWithObjects: @"AccountID",@"DepPlace",@"Destination",
                                                           @"ServiceTime",nil];
    
    //post值
    NSArray  *orderValuesArr  = [NSArray arrayWithObjects: @"62", @"shanghai",@"shanghai",
                                                           @"2012/10/12", nil];
    
    //post参数(Dictionary)
    NSDictionary *orderDic = [NSDictionary dictionaryWithObjects:orderValuesArr
                                                         forKeys:orderKeysArr];
    //post参数(json NSString)
    NSString *orderJson    = [orderDic JSONFragment];
    NSLog(@"info json:%@", orderJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Data", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", orderJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:CREATE_ORDER];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) sendMessage
{
    //post字段
    NSArray *messageKeysArr     = [NSArray arrayWithObjects: @"SenderID",@"ReceiverID",@"ReserID",
                                  @"Text", nil];
    
    //post值
    NSArray  *messageValuesArr  = [NSArray arrayWithObjects:@"62", @"62",@"1",
                                   @"zhangsan", nil];
    
    //post参数(Dictionary)
    NSDictionary *messageDic    = [NSDictionary dictionaryWithObjects:messageValuesArr
                                                              forKeys:messageKeysArr];
    //post参数(json NSString)
    NSString *messageJson       = [messageDic JSONFragment];
    NSLog(@"message json:%@", messageJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"Voice",@"Data", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"sdfsdfs",messageJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:SEND_MESSAGE];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getDetailRecord
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token",@"SenderID",@"Offset",@"Rows", nil];
    NSData  *devToken  = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"61",@"0",@"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_DETAIL_RECORD];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getRecordList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token",@"Offset",@"Rows", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"0",@"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_RECORD_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) addMoney
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Money", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"100", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:ADD_MONEY];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) deleteAddress
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"UPAID", nil];    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"1", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:DELETE_ADDRESS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) editAddress
{
    //post字段
    NSArray *addressKeysArr    = [NSArray arrayWithObjects: @"City",@"Zone",@"Street",
                                  @"Lng",@"Lat", nil];
    
    //post值
    NSArray  *addressValuesArr  = [NSArray arrayWithObjects:@"shanghai", @"shanghai",@"shanghai",
                                   @"32.132154", @"32.132154", nil];
    
    //post参数(Dictionary)
    NSDictionary *addressDic = [NSDictionary dictionaryWithObjects:addressValuesArr
                                                           forKeys:addressKeysArr];
    //post参数(json NSString)
    NSString *addressJson    = [addressDic JSONFragment];
    NSLog(@"info json:%@", addressJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"UPAID", @"Data", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", @"1", addressJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:EDIT_ADDRESS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getAddress
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token",@"Offset",@"Rows", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"0",@"0",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_ADDRESS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) addAddress
{
    //post字段
    NSArray *addressKeysArr    = [NSArray arrayWithObjects: @"City",@"Zone",@"Street",
                                                            @"Lng",@"Lat", nil];
    
    //post值
    NSArray  *addressValuesArr  = [NSArray arrayWithObjects:@"shanghai", @"shanghai",@"shanghai",
                                                            @"32.132154", @"32.132154", nil];
    
    //post参数(Dictionary)
    NSDictionary *addressDic = [NSDictionary dictionaryWithObjects:addressValuesArr
                                                        forKeys:addressKeysArr];
    //post参数(json NSString)
    NSString *addressJson    = [addressDic JSONFragment];
    NSLog(@"info json:%@", addressJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"Data", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E", addressJson, nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:ADD_ADDRESS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) deleteFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"FAccountID", nil];    
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                          @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"61", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:DELETE_FRIEND];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) addFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID", @"Token", @"FAccountID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"62",
                                            @"8ADFBD25F25976C57090B1CD9B2F76513F58ED411DC85DB7F552FC436E",@"61", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:ADD_FRIEND];
    NSLog(@"resStr:%@", regStr);
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getData
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_DATA];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getCountMoney
{
    //post字段
    NSArray *dateKeysArr    = [NSArray arrayWithObjects:@"Start", @"End", nil];
    
    //post值
    NSArray  *dateValuesArr  = [NSArray arrayWithObjects:@"2012/01/01",@"2012/12/30", nil];
    
    //post参数(Dictionary)
    NSDictionary *dateDic = [NSDictionary dictionaryWithObjects:dateValuesArr
                                                        forKeys:dateKeysArr];
    //post参数(json NSString)
    NSString *dateJson   = [dateDic JSONFragment];
    NSLog(@"date json:%@", dateJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"Date",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa", dateJson,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_MONEY];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getCarCompanyInformation
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"CompanyID",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa", @"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_CAR_INFORMATION];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getCarInformation
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"DriverID",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa", @"70",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_CAR_INFORMATION];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) deleteDriverFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"FAccountID",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa", @"62",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:DELETE_DRIVER_FRIEND];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) inviteFriend
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"FAccountID",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa", @"62",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:INVITE_FRIEND];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) setDriverStatus
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"Status",nil];
    
    //    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"70", @"aaa", @"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:SET_DRIVER_STATUS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) loginDriver
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email",@"Password",nil];
    
//    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"gongsi11@gongsi.com", @"123456", nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_CAR_DRIVERS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) getCarDrivers
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"License",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"12321",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:BASE_URL]stringByAppendingString:GET_CAR_DRIVERS];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif

}

/**
 *拍居API测试函数
 **/

- (void) PaiJuRegist
{
    NSString *pwd = [@"123456" md5HexDigest];
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m",@"act",@"AccountName",
                                                   @"Email",@"Password",@"DeviceToken", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"Reg",@"lynn",
                                                   @"lynn.linyong@gmail.com",pwd,@"123456",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr         = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif   
}
//AuthKey   = fca51c2b01074cd6aee12fc54a319d5c
//AccountID = 20
//AccountName= lynn
//Status =1

- (void) PaijuLogin
{
    NSString *pwd = [@"123456" md5HexDigest];
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m",@"act",@"AccountName",
                                                   @"Password",@"DeviceToken", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"login",@"lynn",
                                                   pwd,@"123456",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr         = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif   
}
//AuthKey=fca51c2b01074cd6aee12fc54a319d5c
//ccountID=20
//AccountName=lynn
//Status=1

- (void) PaijuForgetPwd
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m",@"act",@"AccountName",
                                                   @"Email", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"forgetPassword",
                                                   @"lynn", @"lynn.linyong@gmail.com",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr         = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif 
}

- (void) PaijuEdit
{
    //post字段
    NSArray *infoKeysArr    = [NSArray arrayWithObjects:@"Email",@"Birthday",@"Gender",
                                                        @"Address",@"FirstName",@"LastName",
                                                        @"PhoneNumber",@"MobileNumber",@"City",
                                                        @"PostCode",@"OldPassword",@"Password", nil];
    //post值
    NSString *oldPwd = [@"654321" md5HexDigest];
    NSString *newPwd = [@"123456" md5HexDigest];
    NSArray  *infoValuesArr  = [NSArray arrayWithObjects:@"lynn.linyong11@gmail.com", @"1999/9/9",[NSNumber numberWithInt:1],
                                @"shanghai", @"YONG", @"Lin",
                                @"123456789",@"123456789", @"shanghai",@"200009",oldPwd,
                                newPwd, nil];
    
    //post参数(Dictionary)
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:infoValuesArr
                             
                             
                             
                             
                                                        forKeys:infoKeysArr];
    //post参数(json NSString)
    NSString *infosJson   = [infoDic JSONFragment];
    NSLog(@"info json:%@", infosJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m",@"act",@"AccountID", @"AuthKey", @"Data", nil];
    NSData *devToken   = [[NSUserDefaults standardUserDefaults] objectForKey:LR_DEVICE_TOKEN];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"Edit",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",infosJson,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetinfo
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m",@"act",@"AccountID",
                                                   @"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"GetDetail",
                                                   @"20",@"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr         = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif 
}

- (void) PaijuIsExsit
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m",@"act",@"Account",
                          @"IsEmail", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"IsExists",
                          @"lynn.linyong@gmail.com",@"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr         = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 1
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 0
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif 
}

- (void) PaijuRecordMobil
{
    //post字段
    NSArray *infoKeysArr = [NSArray arrayWithObjects:@"1",@"2",nil];
    
    //post值
    NSArray  *infoValuesArr  = [NSArray arrayWithObjects:@"1112233445",@"33322444", nil];
    
    //post参数(Dictionary)
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:infoValuesArr
                                                        forKeys:infoKeysArr];
    //post参数(json NSString)
    NSString *infosJson   = [infoDic JSONFragment];
    NSLog(@"info json:%@", infosJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID", @"ViewName",               
                                                   @"RecommendMobile", @"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"RecordMobile",@"20",
                            @"张三",infosJson,@"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetContactData
{    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",@"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"GetContactData",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuRecharge
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                                                   @"Money",@"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"user",@"DoRecharge",@"20",
                                                   @"100",@"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuSearchOrder
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey",@"SID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"IsExists",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",@"2012112653069",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetList
{
    //post字段
//    NSArray *infoKeysArr = [NSArray arrayWithObjects:@"NickName",@"Birthday",@"Gender",
//                            @"Skin",@"Password",
//                            @"OldPassword", nil];
//    //post值
//    NSString *oldPwd     = [@"123456" md5HexDigest];
//    NSString *newPwd     = [@"654321" md5HexDigest];
//    NSArray  *infoValuesArr  = [NSArray arrayWithObjects:@"lynn", @"2011-11-15",[NSNumber numberWithInt:1],
//                                @"97", newPwd,
//                                oldPwd, nil];
//    
//    //post参数(Dictionary)
//    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:infoValuesArr
//                                                        forKeys:infoKeysArr];
//    //post参数(json NSString)
//    NSString *infosJson   = [infoDic JSONFragment];
//    NSLog(@"info json:%@", infosJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey",@"Offset",@"Rows", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"GetLists",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",@"0",@"10",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuFllowList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"GetFollowing",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetImageList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"SID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"GetImageLists",@"2",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"resStr:%@", resStr);
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetOrderList
{
    //post字段
    NSArray *infoKeysArr = [NSArray arrayWithObjects:@"AccountID",@"Status",nil];
    
    //post值
    NSArray  *infoValuesArr  = [NSArray arrayWithObjects:@"20", @"4", nil];
    
    //post参数(Dictionary)
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:infoValuesArr
                                                        forKeys:infoKeysArr];
    //post参数(json NSString)
    NSString *infosJson   = [infoDic JSONFragment];
    NSLog(@"info json:%@", infosJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AuthKey", @"Offset",@"Rows",@"Where", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"commodity",@"GetOrderFormLists",@"fca51c2b01074cd6aee12fc54a319d5c",@"0",
                          @"10",infosJson,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuPayOrder
{
    
}

- (void) PaijuMakeOrder
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey", @"ID",@"PayID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Commodity",@"MakeOrderForm",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",@"1",@"3",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuPudDetail
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey", @"ID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Commodity",@"getDetail",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",@"4",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuSearch
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey", @"Keyword", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Commodity",@"GetCList",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",@"佘山",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetClassList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                                                   @"AuthKey", @"ClassID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Commodity",@"GetCList",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",[NSNumber numberWithInt:3],nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetClass
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                                                   @"AuthKey", @"ParentID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Commodity",@"getClass",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",[NSNumber numberWithInt:3],nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuPayTradeForBuy
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey", @"SID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Sale",@"PayTradeForBuy",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",[NSNumber numberWithInt:3],nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuElites
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey", @"Type", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"Commodity",@"getElites",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",[NSNumber numberWithInt:3],nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetCommentList
{
    //post字段
    NSArray *orderKeysArr     = [NSArray arrayWithObjects: @"SID",@"AccountID",nil];
    
    //post值
    NSArray  *orderValuesArr  = [NSArray arrayWithObjects: @"2", @"20", nil];
    
    //post参数(Dictionary)
    NSDictionary *orderDic = [NSDictionary dictionaryWithObjects:orderValuesArr
                                                         forKeys:orderKeysArr];
    //post参数(json NSString)
    NSString *orderJson    = [orderDic JSONFragment];
    NSLog(@"order json:%@", orderJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"Where",
                          @"Offset", @"Rows", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"GetComments",orderJson,@"0",@"10",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuAddComment
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"AuthKey",@"SID",@"Star",@"Content", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"AddComment",@"20",
                          @"fca51c2b01074cd6aee12fc54a319d5c",@"2",@"2",@"2sdfsdsdf",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuFllowProduct
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"SID", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"IsFollowing",@"20",
                          @"1",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuGetOrderDetail
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"SID",@"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"GetDetail",@"20",
                                                   @"3",@"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) PaijuFllow
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"m", @"act", @"AccountID",
                          @"SID",@"AuthKey", nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"sale",@"GetDetail",@"20",
                          @"3",@"fca51c2b01074cd6aee12fc54a319d5c",nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = PAIJU_BASE_URL;
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

/***************************1510 PHP文档Part1.doc***************************/
- (void) cmsRegist
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"NickName",@"Email",@"Password",
                          @"Gender",@"Birthday",@"Skin",@"keycode",nil];    
    //    95   未知
    //    96   中性肌肤
    //    97   干性肌肤
    //    98   油性肌肤
    //    99   混合性肌肤
    //    100  敏感性肌肤
    NSString *pwd      = [@"123456" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"lynn",@"lynn.linyong@gmail.com",
                          pwd,@"1",@"2008-01-01",@"96",TOKEN_KEY,nil];
    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_REGIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr   = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}
//AccountID=387
//Status=1
//Token=091dfe32-6426-4add-b0bb-63f1dfe51839
//NickName=lynn

- (void) cmsLogin
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email",@"Password",@"keycode",nil];
    NSString *pwd      = [@"654321" md5HexDigest];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"lynn.linyong@gmail.com",pwd,TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_LOGIN];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}
//AccountID=387
//Status=1
//Token=091dfe32-6426-4add-b0bb-63f1dfe51839
//NickName=lynn

- (void) cmsForgetPwd
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email",@"keycode",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"lynn.linyong@gmail.com",TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_FORGRT_PASSWORD];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsLogout
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_LOGOUT];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsEditInfo
{
    //post字段
    NSArray *infoKeysArr = [NSArray arrayWithObjects:@"NickName",@"Birthday",@"Gender",
                            @"Skin",@"Password",
                            @"OldPassword", nil];
    //post值
    NSString *oldPwd     = [@"123456" md5HexDigest];
    NSString *newPwd     = [@"654321" md5HexDigest];
    NSArray  *infoValuesArr  = [NSArray arrayWithObjects:@"lynn", @"2011-11-15",[NSNumber numberWithInt:1],
                                @"97", newPwd,
                                oldPwd, nil];
    
    //post参数(Dictionary)
    NSDictionary *infoDic = [NSDictionary dictionaryWithObjects:infoValuesArr
                                                        forKeys:infoKeysArr];
    //post参数(json NSString)
    NSString *infosJson   = [infoDic JSONFragment];
    NSLog(@"info json:%@", infosJson);
    
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"Data",@"keycode",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",infosJson,TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_EDIT_INFOMATION];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsChangeAvatar
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_LOGOUT];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetDetail
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",
                          @"keycode",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",
                          TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_GET_DETAIL];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsIsExists
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"Email",@"keycode",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"lynn.linyong@gmail.com",TOKEN_KEY,nil];    
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_EXISTS_ACCOUNT];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0    
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];    
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];    
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic = [resStr JSONValue]; 
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetClassItem
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"ParentID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"2",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_GET_CLASS_ITEM];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSArray *array     = [resDic objectForKey:@"List"];
    NSDictionary *dic  = [array objectAtIndex:0];
    NSLog(@"%@", [dic objectForKey:@"ClassName"]);
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"Type",@"ClassID",@"Offset",@"Rows",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"1",@"1",@"0",@"10",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_GET_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetPudDetail
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"ProductID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"384",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_GET_PUD_DETAIL];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsAddComment 
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"ProductID",@"Content",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"384",@"123123",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_ADD_COMMENT];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetCommentList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"ProductID",@"Offset",@"Rows",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"384",@"0",@"10",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_GET_COMMENT_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsCountBuy
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"ProductID",@"Type",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"384",@"2",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_COUNT_BUY];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetTryList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode",@"Type",@"Offset",@"Rows",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY,@"2",@"0",@"10",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]stringByAppendingString:CMS_GET_TRY_LIST];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetTryDetail
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode", @"ProductID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY, @"1",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]
                             stringByAppendingString:CMS_GET_TRY_DETAIL];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsTryApply
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode", @"ProductID",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY, @"1",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]
                          stringByAppendingString:CMS_TRY_APPLY];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

- (void) cmsGetMarketList
{
    NSArray *paramsArr = [NSArray arrayWithObjects:@"UID",@"Token",@"keycode", @"ClassID",
                                                   @"Offset", @"Rows",nil];
    NSArray *valuesArr = [NSArray arrayWithObjects:@"387",@"091dfe32-6426-4add-b0bb-63f1dfe51839",TOKEN_KEY, @"4",@"0",@"10",nil];
    NSDictionary *pDic = [NSDictionary dictionaryWithObjects:valuesArr
                                                     forKeys:paramsArr];
    NSString *regStr   = [[NSString stringWithFormat:CMS_BASE_URL]
                          stringByAppendingString:CMS_TRY_APPLY];
    ServerRequest *serverReq = [ServerRequest sharedServerRequest];
    serverReq.delegate = self;
    
#if 0
    [serverReq requestASyncWith:kServerPostRequest
                       paramDic:pDic
                         urlStr:regStr];
#endif
    
#if 1
    NSData *resVal = [serverReq requestSyncWith:kServerPostRequest
                                       paramDic:pDic
                                         urlStr:regStr];
    
    NSString *resStr = [[[NSString alloc]initWithData:resVal
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSLog(@"%@", resStr);
    NSDictionary *resDic = [resStr JSONValue];
    NSArray *keysArr     = [resDic allKeys];
    NSArray *valsArr     = [resDic allValues];
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
#endif
}

#pragma mark -
#pragma mark ServerRequest Delegate
- (void) requestAsyncFailed:(ASIHTTPRequest *)request
{
    NSLog(@"***********Result****************");
    NSLog(@"ERROR");
    NSLog(@"***********Result****************");
}

- (void) requestAsyncSuccessed:(ASIHTTPRequest *)request
{
    NSData   *resVal = [request responseData];    
    NSString *resStr = [[[NSString alloc]initWithData:resVal 
                                             encoding:NSUTF8StringEncoding]autorelease];
    NSDictionary *resDic   = [resStr JSONValue]; 
    NSArray      *keysArr  = [resDic allKeys];
    NSArray      *valsArr  = [resDic allValues];
    
    NSLog(@"***********Result****************");
    for (int i=0; i<keysArr.count; i++)
    {
        NSLog(@"%@=%@", [keysArr objectAtIndex:i], [valsArr objectAtIndex:i]);
    }
    NSLog(@"***********Result****************");
}
@end
