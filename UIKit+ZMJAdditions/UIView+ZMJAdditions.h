//
//  UIView+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-28.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZMJAdditions)

@property (nonatomic, setter = ZMJ_setLeft:) CGFloat ZMJ_left;
@property (nonatomic, setter = ZMJ_setRight:) CGFloat ZMJ_right;
@property (nonatomic, setter = ZMJ_setTop:) CGFloat ZMJ_top;
@property (nonatomic, setter = ZMJ_setBottom:) CGFloat ZMJ_bottom;
@property (nonatomic, setter = ZMJ_setWidth:) CGFloat ZMJ_width;
@property (nonatomic, setter = ZMJ_setHeight:) CGFloat ZMJ_height;

- (void)ZMJ_removeAllSubviews;

- (void)ZMJ_removeSubviewsOfClass:(Class)theClass;

- (void)ZMJ_removeAllGestureRecognizers;

- (void)ZMJ_removeGestureRecognizersOfClass:(Class)theClass;

@end
