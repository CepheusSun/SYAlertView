//
//  SYAlertViewGlobalConfig.h
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SYAlertViewGlobalConfig : NSObject

/**
 标题的字体颜色
 */
+ (UIColor *)syav_titleLabelTextColor;

/**
 详情的字体颜色
 */
+ (UIColor *)syav_contentLabelTextColor;

/**
 详情与按钮之间的间隔横线
 */
+ (UIColor *)syav_spliterColor;

/**
 按钮之间分隔的横线
 */
+ (UIColor *)syav_optionSpliterColor;

/**
 普通按钮的颜色属性
 */
+ (UIFont *)syav_normalOptFont;
+ (UIColor *)syav_normalOptTextColor;
+ (UIColor *)syav_normalOptBackgroundColor;
+ (UIColor *)syav_normalOptHighlightBackgroundColor;

/**
 取消按钮的颜色属性
 */
+ (UIFont *)syav_cancelOptFont;
+ (UIColor *)syav_cancelOptTextColor;
+ (UIColor *)syav_cancelOptBackgroundColor;
+ (UIColor *)syav_cancelOptHighlightBackgroundColor;

/**
 设置属性
 */
+ (void)syav_setTitleLabelTextColor:(NSString *)color;
+ (void)syav_setContentLabelTextColor:(NSString *)color;
+ (void)syav_setSpliterTextColor:(NSString *)color;
+ (void)syav_setOptionSpliterTextColor:(NSString *)color;
+ (void)syav_setNormalOptFont:(CGFloat)font;
+ (void)syav_setNormalOptTextColor:(NSString *)color;
+ (void)syav_setNormalOptBackgroundColor:(NSString *)color;
+ (void)syav_setNormalOptHighlightBackgroundColor:(NSString *)color;
+ (void)syav_setCancelOptFont:(CGFloat)font;
+ (void)syav_setCancelOptTextColor:(NSString *)color;
+ (void)syav_setCancelOptBackgroundColor:(NSString *)color;
+ (void)syav_setCancelOptHighlightBackgroundColor:(NSString *)color;

@end
