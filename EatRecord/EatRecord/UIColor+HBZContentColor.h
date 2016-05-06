//
//  UIColor+HBZContentColor.h
//  EatRecord
//
//  Created by hourunjing on 16/5/6.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HBZContentColor)

/**
 *  主题色
 */
+ (UIColor *)hbz_themeColor;
/**
 * 警示色
 */
+ (UIColor *)hbz_warningColor;
/**
 * 饮食标签选中色
 */
+ (UIColor *)hbz_categorySelectedColor;
/**
 *  饮食标签正常色
 */
+ (UIColor *)hbz_categoryBaseColor;
/**
 * 文本色
 */
+ (UIColor *)hbz_textColor;

@end
