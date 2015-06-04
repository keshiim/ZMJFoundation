//
//  NSArray+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ZMJAdditions)

/**
 *  Use isEqualToString: to compare, which is faster than containsObject:
 */
- (BOOL)zmjJ_containsString:(NSString *)string;

@end
