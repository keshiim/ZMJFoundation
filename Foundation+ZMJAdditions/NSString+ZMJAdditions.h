//
//  NSString+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZMJAdditions)

- (NSString *)ZMJ_trimSpace;

- (NSString *)ZMJ_md5;

- (NSString *)ZMJ_URLEncodedString;

- (NSString *)ZMJ_URLDecodedString;

@end
