//
//  UIApplication+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-28.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "UIApplication+ZMJAdditions.h"

@implementation UIApplication (ZMJAdditions)

+ (NSString *)ZMJ_version
{
    return [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
}

+ (NSString *)ZMJ_build
{
    return [[NSBundle mainBundle] infoDictionary][(NSString*)kCFBundleVersionKey];
}

+ (NSString *)ZMJ_cachesPath
{
    static dispatch_once_t onceToken;
	static NSString *cachedPath;
	dispatch_once(&onceToken, ^{
		cachedPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject];
	});
	return cachedPath;
}

+ (NSString *)ZMJ_documentsPath
{
    static dispatch_once_t onceToken;
	static NSString *cachedPath;
	dispatch_once(&onceToken, ^{
		cachedPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
	});
	return cachedPath;
}

+ (NSString *)ZMJ_temporaryPath
{
    static dispatch_once_t onceToken;
	static NSString *cachedPath;
	dispatch_once(&onceToken, ^{
		cachedPath = NSTemporaryDirectory();
	});	
	return cachedPath;
}

@end
