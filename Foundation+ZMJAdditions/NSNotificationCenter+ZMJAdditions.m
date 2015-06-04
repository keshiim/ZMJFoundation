//
//  NSNotificationCenter+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "NSNotificationCenter+ZMJAdditions.h"

@implementation NSNotificationCenter (ZMJAdditions)

- (void)ZMJ_postNotificationName:(NSString *)aName object:(id)object userObject:(id)userObject
{
    if (!object) {
        [self postNotificationName:aName object:object];
    }
    [self postNotificationName:aName object:object userInfo:@{ZMJNotificationUserObjectKey: userObject}];
}

- (void)ZMJ_postNotificationOnMainThreadName:(NSString *)aName sender:(id)sender userObject:(id)userObject
{
    NSNotification *notification = [NSNotification notificationWithName:aName object:sender userInfo:userObject ? @{ZMJNotificationUserObjectKey: userObject} : nil];
    [self performSelectorOnMainThread:@selector(postNotification:) withObject:notification waitUntilDone:YES];
}

@end
