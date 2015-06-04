//
//  UIColor+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-28.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "UIColor+ZMJAdditions.h"

UIColor* ZMJ_RGBColor(CGFloat r, CGFloat g, CGFloat b)
{
    return ZMJ_RGBAColor(r, g, b, 1.0);
}

UIColor* ZMJ_RGBAColor(CGFloat r, CGFloat g, CGFloat b, CGFloat a)
{
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}

UIColor* ZMJ_HEXColor(NSInteger hex)
{
    return ZMJ_HEXAColor(hex, 1.0);
}

UIColor* ZMJ_HEXAColor(NSInteger hex, CGFloat a)
{
    return ZMJ_RGBAColor((hex>>16)&0xFF, (hex>>8)&0xFF, hex&0xFF, a);
}

@implementation UIColor (ZMJAdditions)

+ (instancetype)ZMJ_randomColor
{
    NSUInteger r, g, b;
    r = arc4random_uniform(256);
    g = arc4random_uniform(256);
    b = arc4random_uniform(256);
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}

@end
