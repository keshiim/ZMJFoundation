//
//  NSMutableAttributedString+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (ZMJAdditions)

- (void)ZMJ_setFont:(UIFont *)font NS_AVAILABLE_IOS(6_0);
- (void)ZMJ_setFont:(UIFont *)font range:(NSRange)range NS_AVAILABLE_IOS(6_0);

- (void)ZMJ_setTextColor:(UIColor *)color NS_AVAILABLE_IOS(6_0);
- (void)ZMJ_setTextColor:(UIColor *)color range:(NSRange)range NS_AVAILABLE_IOS(6_0);

@end
