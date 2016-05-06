//
//  UIColor+HBZContentColor.m
//  EatRecord
//
//  Created by hourunjing on 16/5/6.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

#import "UIColor+HBZContentColor.h"
#import "UIColor+HBZAdditions.h"

@implementation UIColor (HBZContentColor)

+ (UIColor *)hbz_themeColor {
  return [UIColor hbz_c1Color];
}

+ (UIColor *)hbz_warningColor {
  return [UIColor hbz_c11Color];
}

+ (UIColor *)hbz_categorySelectedColor {
  return [[UIColor hbz_c5Color] colorWithAlphaComponent:0.4];
}

+ (UIColor *)hbz_categoryBaseColor {
	return [UIColor hbz_c2Color];
}

+ (UIColor *)hbz_textColor {
	return [UIColor hbz_c3Color];
}

@end
