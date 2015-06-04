//
//  NSError+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 11/1/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZMJFoundationConstans.h"

@interface NSError (ZMJAdditions)

+ (instancetype)ZMJ_errorWithDomain:(NSString *)domain code:(NSInteger)code message:(NSString *)message;

- (NSString *)ZMJ_errorMessage;

@end
