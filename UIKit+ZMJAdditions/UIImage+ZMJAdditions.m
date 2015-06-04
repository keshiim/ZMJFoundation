//
//  UIImage+ZMJAdditions.m
//  like
//
//  Created by Jason on 9/5/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import "UIImage+ZMJAdditions.h"

@implementation UIImage (ZMJAdditions)

+ (instancetype)ZMJ_imageWithSolidColor:(UIColor *)color size:(CGSize)size
{
    NSParameterAssert(color);
	NSAssert(!CGSizeEqualToSize(size, CGSizeZero), @"Size cannot be zero");
    
	CGRect rect = CGRectMake(0, 0, size.width, size.height);
	
	UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
	[color setFill];
	UIRectFill(rect);
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return image;
}

@end
