//
//  NSString+Md5.h
//  PHPApiTestProj
//
//  Created by Lynn on 12-11-14.
//  Copyright (c) 2012年 WiMi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (Md5)
- (NSString *) md5HexDigest;
@end
