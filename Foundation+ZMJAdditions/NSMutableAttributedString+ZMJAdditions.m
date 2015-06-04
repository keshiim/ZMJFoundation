//
//  NSMutableAttributedString+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "NSMutableAttributedString+ZMJAdditions.h"

@implementation NSMutableAttributedString (ZMJAdditions)

- (void)ZMJ_setFont:(UIFont *)font
{
	[self ZMJ_setFontName:font.fontName size:font.pointSize];
}

- (void)ZMJ_setFont:(UIFont *)font range:(NSRange)range
{
	[self ZMJ_setFontName:font.fontName size:font.pointSize range:range];
}

- (void)ZMJ_setFontName:(NSString *)fontName size:(CGFloat)size
{
	[self ZMJ_setFontName:fontName size:size range:NSMakeRange(0,[self length])];
}

- (void)ZMJ_setFontName:(NSString *)fontName size:(CGFloat)size range:(NSRange)range
{
    [self addAttribute:NSFontAttributeName value:[UIFont fontWithName:fontName size:size] range:range];
}

- (void)ZMJ_setTextColor:(UIColor *)color
{
	[self ZMJ_setTextColor:color range:NSMakeRange(0,[self length])];
}

- (void)ZMJ_setTextColor:(UIColor *)color range:(NSRange)range
{
	[self addAttribute:NSForegroundColorAttributeName value:color range:range];
}

@end
