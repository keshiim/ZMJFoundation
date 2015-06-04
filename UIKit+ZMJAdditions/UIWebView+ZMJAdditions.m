//
//  UIWebView+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "UIWebView+ZMJAdditions.h"

@implementation UIWebView (ZMJAdditions)

- (NSString *)ZMJ_documentTitle
{
    return [self stringByEvaluatingJavaScriptFromString:@"document.title"];
}

@end
