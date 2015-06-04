//
//  UIScrollView+ZMJFooterView.m
//  PlayWithScrollView
//
//  Created by Jason on 11/13/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import "UIScrollView+ZMJFooterView.h"
#import <objc/runtime.h>

@implementation UIScrollView (ZMJFooterView)

static char ZMJFooterViewKey; // global 0 initialization is fine here, no need to change it since the value of the variable is not used, just the address

- (void)ZMJ_setFooterView:(UIView *)footerView
{
    if (!self.ZMJ_footerView) {
        [self addObserver:self forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:NULL];
    }
    else {
        UIEdgeInsets insets = self.contentInset;
        insets.bottom -= CGRectGetHeight([self.ZMJ_footerView frame]);
        self.contentInset = insets;
        
        [self.ZMJ_footerView removeFromSuperview];
    }
    
    objc_setAssociatedObject(self, &ZMJFooterViewKey, footerView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    if (!footerView) {
        [self removeObserver:self forKeyPath:@"contentSize"];
        return;
    }
    
    UIEdgeInsets insets = self.contentInset;
    insets.bottom += CGRectGetHeight([self.ZMJ_footerView frame]);
    self.contentInset = insets;
    
    CGRect frame = [self.ZMJ_footerView frame];
    frame.size.width = self.bounds.size.width;
    frame.origin.y = self.contentSize.height;
    [self.ZMJ_footerView setFrame:frame];
    [self addSubview:self.ZMJ_footerView];
}

- (UIView *)ZMJ_footerView
{
    return objc_getAssociatedObject(self, &ZMJFooterViewKey);
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if (![keyPath isEqualToString:@"contentSize"]) {
        return;
    }
    
    CGRect frame = [self.ZMJ_footerView frame];
    frame.size.width = self.bounds.size.width;
    frame.origin.y = self.contentSize.height;
    [self.ZMJ_footerView setFrame:frame];
}

@end
