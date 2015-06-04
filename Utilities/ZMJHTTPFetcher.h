//
//  ZMJHTTPFetcher.h
//  ZMJFoundation
//
//  Created by Jason on 8/6/14.
//
//

#import <Foundation/Foundation.h>

@interface ZMJHTTPFetcher : NSObject

typedef void (^ZMJHTTPFetcherBlock) (ZMJHTTPFetcher *fetcher, NSError *error);

/**
 *  Can be anything, determined by subclass's implementation
 */
@property (nonatomic, strong) id responseObject;

/**
 *  The some as ZMJHTTPFetcherBlock's error
 */
@property (nonatomic, strong) NSError *error;

/**
 *  The network request operation
 */
@property (nonatomic, strong) NSOperation *requestOperation;

/**
 *  Convenience method to get an instance
 *
 *  @return a instance
 */
+ (instancetype)fetcher;

/**
 *  Invokes [self.requestOperation cancel] to cancel the network request
 */
- (void)cancel;

@end
