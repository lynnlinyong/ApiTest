//
//  ServerRequest.m
//  PHPApiTestProj
//
//  Created by Lynn on 12-11-13.
//  Copyright (c) 2012年 WiMi. All rights reserved.
//

#import "ServerRequest.h"
#import "ASIFormDataRequest.h"

@implementation ServerRequest
@synthesize delegate = _delegate;

static ServerRequest *sharedServerRequest = nil; 

+ (ServerRequest *)sharedServerRequest
{ 
	@synchronized(self) 
	{ 
		if (sharedServerRequest == nil)
		{ 
			sharedServerRequest = [[self alloc] init];
		} 
	} 
    
	return sharedServerRequest; 
} 

+ (id)allocWithZone:(NSZone *)zone 
{ 
	@synchronized(self) 
	{ 
		if (sharedServerRequest == nil) 
		{ 
			sharedServerRequest = [super allocWithZone:zone]; 
			return sharedServerRequest; 
		} 
	} 
    
	return nil;
} 

- (id)copyWithZone:(NSZone *)zone 
{ 
	return self; 
} 

- (id)retain 
{
	return self; 
} 

- (NSUInteger)retainCount 
{ 
	return NSUIntegerMax; 
} 

- (oneway void)release
{ 
} 

- (id)autorelease 
{ 
	return self;
}


//同步请求
- (NSData *) requestSyncWith:(ServReqMethod)  kReqMethod
                    paramDic:(NSDictionary *) pDic
                      urlStr:(NSString *)     pUrlStr
{
    NSURL *pUrl = nil;
    LRAssert(pUrlStr);
    
    switch (kReqMethod)
    {
        case kServerPostRequest:        //post
        {
            LRAssert(pDic);
            NSArray *paramsArr = [pDic allKeys];
            NSArray *valuesArr = [pDic allValues];
            
            pUrl = [NSURL URLWithString:pUrlStr];
            ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:pUrl];
            for (int i=0; i<paramsArr.count; i++)
            {
                NSLog(@"value:%@", [valuesArr objectAtIndex:i]);
                NSLog(@"param:%@", [paramsArr objectAtIndex:i]);
                
                [request setPostValue:[valuesArr objectAtIndex:i] 
                               forKey:[paramsArr objectAtIndex:i]];
                //                [request setTimeOutSeconds:10];
            }
            [request setRequestMethod:@"POST"];
            [request setDefaultResponseEncoding:NSUTF8StringEncoding];
            [request addRequestHeader:@"Content-Type"
                                value:@"text/xml; charset=utf-8"];
            [request startSynchronous];
            return [request responseData];
            break;
        }
        case kServerGetRequest:         //get
        {
//            LRAssert(pDic);
            if (pDic)
            {
                NSArray *paramsArr = [pDic allKeys];
                NSArray *valuesArr = [pDic allValues];
                
                for (int i=0; i<paramsArr.count; i++)
                {
                    if (i == 0)
                    {
                        [pUrlStr stringByAppendingFormat:@"?%@=%@", [paramsArr objectAtIndex:i],
                         [valuesArr objectAtIndex:i]];
                    }
                    else 
                    {
                        [pUrlStr stringByAppendingFormat:@"&%@=%@", [paramsArr objectAtIndex:i],
                         [valuesArr objectAtIndex:i]];
                    }
                }
            }
            
            pUrl = [NSURL URLWithString:pUrlStr];
            NSLog(@"URL=%@", pUrl);
            
            ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:pUrl];
            [request setRequestMethod:@"GET"];
            [request startSynchronous];
            return [request responseData];
            break;
        }
        default:
            break;
    }
    
    return nil;
}

//异步请求
- (void) requestASyncWith:(ServReqMethod)  kReqMethod
                 paramDic:(NSDictionary *) pDic
                   urlStr:(NSString *)     pUrlStr
{
    NSURL *pUrl = nil;
    LRAssert(pUrlStr);

    switch (kReqMethod)
    {
        case kServerPostRequest:        //post
        {
            LRAssert(pDic);
            NSArray *paramsArr = [pDic allKeys];
            NSArray *valuesArr = [pDic allValues];
            
            pUrl = [NSURL URLWithString:pUrlStr];
            ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:pUrl];
            [request setDelegate:self];
            [request setDidFinishSelector:@selector(requestAsyncSuccessed:)];
            [request setDidFailSelector:@selector(requestAsyncFailed:)];
            for (int i=0; i<paramsArr.count; i++)
            {
                [request setPostValue:[valuesArr objectAtIndex:i] 
                               forKey:[paramsArr objectAtIndex:i]];
            }
            [request setDefaultResponseEncoding:NSUTF8StringEncoding];
            [request addRequestHeader:@"Content-Type"
                                value:@"text/xml; charset=utf-8"];
            [request startAsynchronous];
            break;
        }
        case kServerGetRequest:         //get
        {
//            LRAssert(pDic);
            if (pDic)
            {
                NSArray *paramsArr = [pDic allKeys];
                NSArray *valuesArr = [pDic allValues];
                
                for (int i=0; i<paramsArr.count; i++)
                {
                    if (i == 0)
                    {
                        [pUrlStr stringByAppendingFormat:@"?%@=%@", [paramsArr objectAtIndex:i],
                                                                    [valuesArr objectAtIndex:i]];
                    }
                    else 
                    {
                        [pUrlStr stringByAppendingFormat:@"&%@=%@", [paramsArr objectAtIndex:i],
                                                                    [valuesArr objectAtIndex:i]];
                    }
                }
            }
            
            pUrl = [NSURL URLWithString:pUrlStr];
            NSLog(@"URL=%@", pUrl);
    
            ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:pUrl];
            [request setDelegate:self];
            [request setDidFinishSelector:@selector(requestAsyncSuccessed:)];
            [request setDidFailSelector:@selector(requestAsyncFailed:)];
            [request startAsynchronous];
            break;
        }
        default:
            break;
    }
}

#pragma mark -
#pragma mark ASIHTTPRequest Delegate
- (void) requestAsyncSuccessed:(ASIHTTPRequest *)request
{
    NSLog(@"File:%s Line:%d", __FILE__, __LINE__);
    
    if (_delegate)
    {
        if ([_delegate respondsToSelector:@selector(requestAsyncSuccessed:)])
        {
            [_delegate requestAsyncSuccessed:request];
        }
    }
}

- (void) requestASyncFailed:(ASIHTTPRequest *)request
{
    NSLog(@"File:%s Line:%d", __FILE__, __LINE__);
    
    if (_delegate)
    {
        if ([_delegate respondsToSelector:@selector(requestAsyncFailed:)])
        {
            [_delegate requestAsyncFailed:request];
        }
    }
}
@end
