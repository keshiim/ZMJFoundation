//
//  UIScrollView+ZMJFooterView.h
//  PlayWithScrollView
//
//  Created by Jason on 11/13/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (ZMJFooterView)

// !!!Important, if you set a footer, you MUST set it to nil before dealloced
@property (nonatomic, strong, setter=ZMJ_setFooterView:) UIView *ZMJ_footerView;

@end
