//
//  ZMJFieldValidation.m
//  ZMJFoundation
//
//  Created by Jason on 8/18/14.
//
//

#import "ZMJFieldValidation.h"

@implementation ZMJFieldValidation

+ (BOOL)validateEmail:(NSString *)email
{
    NSString *pattern = @"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
    NSRegularExpression *reg = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:nil];
    NSUInteger numberOfMatches = [reg numberOfMatchesInString:email
                                                      options:0
                                                        range:NSMakeRange(0, [email length])];
    return numberOfMatches == 1;
}

@end
