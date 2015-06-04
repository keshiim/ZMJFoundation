//
//  NSString+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "NSString+ZMJAdditions.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (ZMJAdditions)

- (NSString *)ZMJ_trimSpace
{
    NSCharacterSet *space = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:space];
}

- (NSString *)ZMJ_md5
{
    const char *str = [self UTF8String];
    if (str == NULL) {
        str = "";
    }
    unsigned char r[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), r);
    return [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            r[0], r[1], r[2], r[3], r[4], r[5], r[6], r[7], r[8], r[9], r[10], r[11], r[12], r[13], r[14], r[15]];
}

- (NSString *)ZMJ_URLEncodedString
{
    return CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(
                                                                     kCFAllocatorDefault,
                                                                     (__bridge_retained CFStringRef)self,
                                                                     NULL,
                                                                     (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                     kCFStringEncodingUTF8));
}

- (NSString *)ZMJ_URLDecodedString
{
    return CFBridgingRelease(CFURLCreateStringByReplacingPercentEscapesUsingEncoding(
                                                                                     kCFAllocatorDefault,
                                                                                     (__bridge_retained CFStringRef)self,
                                                                                     CFSTR(""),
                                                                                     kCFStringEncodingUTF8));
}

@end
