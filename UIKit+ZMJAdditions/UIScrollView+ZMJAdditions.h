//
//  UIScrollView+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (ZMJAdditions)

- (CGSize)ZMJ_availableBoundsSize;

- (void)ZMJ_scrollToTopAnimated:(BOOL)animated;

- (void)ZMJ_scrollToBottomAnimated:(BOOL)animated;

- (BOOL)ZMJ_isReachingTheBottom;

@end
