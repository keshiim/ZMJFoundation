//
//  ZMJImagePickerController.h
//  FutureStep
//
//  Created by Jason on 8/6/14.
//
//

#import <UIKit/UIKit.h>

@interface ZMJImagePickerController : UIImagePickerController

@property (nonatomic, copy) void (^finishedBlock) (ZMJImagePickerController *imagePicker, NSDictionary *mediaInfo);
@property (nonatomic, copy) void (^cancelBlock) (ZMJImagePickerController *imagePicker);

// UIImagePickerController will break status bar's appearence
// Set the block to restore it, this block will be executed in viewWillAppear
@property (nonatomic, copy) void (^restoreStatusBarBlock) (void);

@property (nonatomic, strong, readonly) UIImage *orignalImage;
@property (nonatomic, strong, readonly) UIImage *editedImage;

@property (nonatomic, strong, readonly) UIImage *fullResolutionImage;
@property (nonatomic, strong, readonly) UIImage *fullScreenImage;

// Determine whether auto dimiss view controller after finish or cancel picking image, defaults to NO
@property (nonatomic, assign) BOOL autoDismiss;

@end
