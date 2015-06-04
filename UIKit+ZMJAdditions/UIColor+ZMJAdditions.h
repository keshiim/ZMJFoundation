//
//  UIColor+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-28.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

UIColor* ZMJ_RGBColor(CGFloat r, CGFloat g, CGFloat b);
UIColor* ZMJ_RGBAColor(CGFloat r, CGFloat g, CGFloat b, CGFloat a);
UIColor* ZMJ_HEXColor(NSInteger hex);
UIColor* ZMJ_HEXAColor(NSInteger hex, CGFloat a);

@interface UIColor (ZMJAdditions)

/**
 *  @return Random rgb color with alpha set to 1.0
 */
+ (instancetype)ZMJ_randomColor;

@end
