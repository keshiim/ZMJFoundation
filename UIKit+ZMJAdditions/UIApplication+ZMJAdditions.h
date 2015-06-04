//
//  UIApplication+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-28.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (ZMJAdditions)

/**
 *  @return The version number of the bundle.
 */
+ (NSString *)ZMJ_version;

/**
 *  @return The build number of the bundle.
 */
+ (NSString *)ZMJ_build;

/**
 *  The return value is cached on the first call.
 *
 *  @return The path to the app's Caches folder.
 */
+ (NSString *)ZMJ_cachesPath;

/**
 *  The return value is cached on the first call.
 *
 *  @return The path to the app's Doucment folder.
 */
+ (NSString *)ZMJ_documentsPath;

/**
 *  The return value is cached on the first call.
 *
 *  @return The path of the temporary directory for the current user.
 */
+ (NSString *)ZMJ_temporaryPath;

@end
