//
//  NSNotificationCenter+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZMJFoundationConstans.h"

@interface NSNotificationCenter (ZMJAdditions)

// Put a user object into user info Dictionary
- (void)ZMJ_postNotificationName:(NSString *)aName object:(id)object userObject:(id)userObject;

- (void)ZMJ_postNotificationOnMainThreadName:(NSString *)aName sender:(id)sender userObject:(id)userObject;

@end
