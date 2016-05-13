//
//  NSString+Addition.m
//  EatRecord
//
//  Created by hourunjing on 16/5/12.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

#import "NSString+Addition.h"

@implementation NSString (Addition)

- (BOOL)empty {
  return (self == nil || [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length < 1);
}

@end
