//
//  ZMJHTTPFetcher.m
//  ZMJFoundation
//
//  Created by Jason on 8/6/14.
//
//

#import "ZMJHTTPFetcher.h"

@implementation ZMJHTTPFetcher

+ (instancetype)fetcher
{
    return [[[self class] alloc] init];
}

- (void)cancel
{
    [self.requestOperation cancel];
}

@end
