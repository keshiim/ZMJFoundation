//
//  UIView+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-28.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "UIView+ZMJAdditions.h"

@implementation UIView (ZMJAdditions)

- (CGFloat)ZMJ_left
{
    return self.frame.origin.x;
}

- (void)ZMJ_setLeft:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)ZMJ_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)ZMJ_setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)ZMJ_top
{
    return self.frame.origin.y;
}

- (void)ZMJ_setTop:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)ZMJ_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)ZMJ_setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)ZMJ_width
{
    return CGRectGetWidth(self.frame);
}

- (void)ZMJ_setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)ZMJ_height
{
    return CGRectGetHeight(self.frame);
}

- (void)ZMJ_setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)ZMJ_removeAllSubviews
{
    for (UIView *subview in [self subviews]) {
        [subview removeFromSuperview];
    }
}

- (void)ZMJ_removeSubviewsOfClass:(Class)theClass
{
    for (UIView *subview in [self subviews]) {
        if ([subview isKindOfClass:theClass]) {
            [subview removeFromSuperview];
        }
    }
}

- (void)ZMJ_removeAllGestureRecognizers
{
    for (UIGestureRecognizer *gesture in self.gestureRecognizers) {
        [self removeGestureRecognizer:gesture];
    }
}

- (void)ZMJ_removeGestureRecognizersOfClass:(Class)theClass
{
    for (UIGestureRecognizer *gesture in self.gestureRecognizers) {
        if ([gesture isKindOfClass:theClass]) {
            [self removeGestureRecognizer:gesture];
        }
    }
}

@end
