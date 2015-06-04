//
//  NSNotification+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZMJFoundationConstans.h"

@interface NSNotification (ZMJAdditions)

/**
 *  @return The user object in user info dictionary
 */
- (id)ZMJ_userObject;

@end
