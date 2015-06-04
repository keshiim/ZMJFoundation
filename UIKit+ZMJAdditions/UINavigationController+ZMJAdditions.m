//
//  UINavigationController+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "UINavigationController+ZMJAdditions.h"

@implementation UINavigationController (ZMJAdditions)

- (UIViewController *)ZMJ_rootViewController
{
    return [self.viewControllers firstObject];
}

@end
