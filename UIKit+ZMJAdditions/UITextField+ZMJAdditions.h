//
//  UITextField+ZMJAdditions.h
//  ZMJFoundation
//
//  Created by Jason on 10/9/14.
//  Copyright (c) 2014 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (ZMJAdditions)

- (void)ZMJ_setPlaceholder:(NSString *)placeholder color:(UIColor *)color NS_AVAILABLE_IOS(6_0);

@end
