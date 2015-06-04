//
//  ZMJBlockFunctions.m
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

#import "ZMJBlockFunctions.h"

void ZMJBlockPerformSyncOnMainThread(void (^block) (void))
{
    if ([NSThread isMainThread]) {
        block();
        return;
    }
    
    dispatch_sync(dispatch_get_main_queue(), ^{
        block();
    });
}