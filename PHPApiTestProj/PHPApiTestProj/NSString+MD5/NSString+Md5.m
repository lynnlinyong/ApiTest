//
//  NSString+Md5.m
//  PHPApiTestProj
//
//  Created by Lynn on 12-11-14.
//  Copyright (c) 2012年 WiMi. All rights reserved.
//

#import "NSString+Md5.h"

@implementation NSString (Md5)

-(NSString *) md5HexDigest
{
    const char *original_str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
    {
        [hash appendFormat:@"%02X", result[i]];
    }
    return [hash lowercaseString];
}

@end
