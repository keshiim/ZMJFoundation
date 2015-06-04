//
//  ZMJActionSheet.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ZMJActionSheetBlock) (void);

@interface ZMJActionSheet : UIActionSheet

@property (nonatomic, weak) id /*<UIActionSheetDelegate>*/ externalDelegate;

- (instancetype)initWithTitle:(NSString *)title;

- (NSInteger)addButtonWithTitle:(NSString *)title block:(ZMJActionSheetBlock)block;

- (NSInteger)addDestructiveButtonWithTitle:(NSString *)title block:(ZMJActionSheetBlock)block;

- (NSInteger)addCancelButtonWithTitle:(NSString *)title block:(ZMJActionSheetBlock)block;

- (NSInteger)addCancelButtonWithTitle:(NSString *)title;

@end
