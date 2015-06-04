//
//  NSArray+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "NSArray+ZMJAdditions.h"

@implementation NSArray (ZMJAdditions)

- (BOOL)zmj_containsString:(NSString *)string
{
    if (!string) {
        return NO;
    }
    
    for (id element in self) {
        if ([element isKindOfClass:[NSString class]]) {
            NSString *stringElement = (NSString *)element;
            if ([stringElement isEqualToString:string]) {
                return YES;
            }
        }
    }
    
    return NO;
}

@end
