//
//  UIScrollView+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "UIScrollView+ZMJAdditions.h"

@implementation UIScrollView (ZMJAdditions)

- (CGSize)ZMJ_availableBoundsSize
{
    UIEdgeInsets inset = self.contentInset;
    CGFloat width = CGRectGetWidth(self.bounds) - inset.left - inset.right;
    CGFloat height = CGRectGetHeight(self.bounds) - inset.top - inset.bottom;
    return CGSizeMake(width, height);
}

- (void)ZMJ_scrollToTopAnimated:(BOOL)animated
{
    CGPoint offset = self.contentOffset;
    offset.y = -self.contentInset.top;
    [self setContentOffset:offset animated:animated];
}

- (void)ZMJ_scrollToBottomAnimated:(BOOL)animated
{
    CGFloat contentHeight = self.contentSize.height;
    CGFloat boundsHeight = self.bounds.size.height;
    UIEdgeInsets insets = self.contentInset;
    if (contentHeight <= [self ZMJ_availableBoundsSize].height) {
        return;
    }
    
    CGPoint offset = self.contentOffset;
    offset.y = contentHeight - boundsHeight + insets.bottom;
    [self setContentOffset:offset animated:animated];
}

- (BOOL)ZMJ_isReachingTheBottom
{
    return CGRectGetHeight(self.bounds) + self.contentOffset.y - self.contentSize.height >= 0;
}

@end
