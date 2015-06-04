//
//  ZMJAlertView.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ZMJAlertViewBlock) (void);

@interface ZMJAlertView : UIAlertView

@property (nonatomic, weak) id /*<UIAlertViewDelegate>*/ externalDelegate;

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message;

- (NSInteger)addButtonWithTitle:(NSString *)title block:(ZMJAlertViewBlock)block;

- (NSInteger)addCancelButtonWithTitle:(NSString *)title block:(ZMJAlertViewBlock)block;

- (void)setCancelBlock:(ZMJAlertViewBlock)block;

@end
