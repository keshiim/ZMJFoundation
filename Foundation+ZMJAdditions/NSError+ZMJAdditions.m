//
//  NSError+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 11/1/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import "NSError+ZMJAdditions.h"

@implementation NSError (ZMJAdditions)

+ (instancetype)ZMJ_errorWithDomain:(NSString *)domain code:(NSInteger)code message:(NSString *)message
{
    if (!message) {
        return [self errorWithDomain:domain code:code userInfo:nil];
    }
    return [NSError errorWithDomain:domain code:code userInfo:@{ZMJErrorMessageKey: message}];
}

- (NSString *)ZMJ_errorMessage
{
    NSString *message = self.userInfo[ZMJErrorMessageKey];
    if (!message) {
        message = [self localizedDescription];
    }
    return message;
}

@end
