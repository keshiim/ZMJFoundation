//
//  UITextField+ZMJAdditions.m
//  ZMJFoundation
//
//  Created by Jason on 10/9/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import "UITextField+ZMJAdditions.h"

@implementation UITextField (ZMJAdditions)

- (void)ZMJ_setPlaceholder:(NSString *)placeholder color:(UIColor *)color
{
    NSAttributedString *s = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName: color}];
    [self setAttributedPlaceholder:s];
}

@end
