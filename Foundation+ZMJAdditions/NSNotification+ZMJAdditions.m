//
//  NSNotification+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "NSNotification+ZMJAdditions.h"

@implementation NSNotification (ZMJAdditions)

- (id)ZMJ_userObject
{
    return [self userInfo][ZMJNotificationUserObjectKey];
}

@end
