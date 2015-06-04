//
//  ZMJBlockFunctions.h
//  ZMJFoundation
//
//  Created by Jason on 14-8-30.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

/**
 *  Performs a block on main thread sync regardless of the current thread
 *
 *  @param block The block to execute
 */
void ZMJBlockPerformSyncOnMainThread(void (^block) (void));
