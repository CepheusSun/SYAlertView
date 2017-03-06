//
//  SYAlertViewGlobalConfig.m
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import "SYAlertViewGlobalConfig.h"
#import "UIColor+SYAlertView.h"

static NSString * const syav_titleLabelTextColor = @"syav_titleLabelTextColorName";
static NSString * const syav_contentLabelTextColor = @"syav_contentLabelTextColorName";
static NSString * const syav_spliterTextColor = @"syav_spliterTextColorName";
static NSString * const syav_optionSpliterTextColor = @"syav_optionSpliterTextColorName";
static NSString * const syav_normalOptFont = @"syav_normalOptFontName";
static NSString * const syav_normalOptTextColor = @"syav_normalOptTextColorName";
static NSString * const syav_normalOptBackgroundColor = @"syav_normalOptBackgroundColorName";
static NSString * const syav_normalOptHighlightBackgroundColor = @"syav_normalOptHighlightBackgroundColorName";
static NSString * const syav_cancelOptFont = @"syav_cancelOptFontName";
static NSString * const syav_cancelOptTextColor = @"syav_cancelOptTextColorName";
static NSString * const syav_cancelOptBackgroundColor = @"syav_cancelOptBackgroundColorName";
static NSString * const syav_cancelOptHighlightBackgroundColor = @"syav_cancelOptHighlightBackgroundColorName";

@implementation SYAlertViewGlobalConfig

+ (UIColor *)syav_titleLabelTextColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_titleLabelTextColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"1f1f1f"];
}

+ (UIColor *)syav_contentLabelTextColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_contentLabelTextColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"838282"];
}

+ (UIColor *)syav_spliterColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_spliterTextColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"e8e8e8"];
}

+ (UIColor *)syav_optionSpliterColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_optionSpliterTextColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"d2d2d2"];
}

+ (UIFont *)syav_normalOptFont {
    NSNumber *font = [[NSUserDefaults standardUserDefaults] objectForKey:syav_normalOptFont];
    if (font) {
        return [UIFont systemFontOfSize:font.floatValue];
    }
    return [UIFont systemFontOfSize:18];
}

+ (UIColor *)syav_normalOptTextColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_normalOptTextColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor whiteColor];
}

+ (UIColor *)syav_normalOptBackgroundColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_normalOptBackgroundColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"41dbf5"];
}

+ (UIColor *)syav_normalOptHighlightBackgroundColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_normalOptHighlightBackgroundColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"2fc9e4"];
}

+ (UIFont *)syav_cancelOptFont {
    NSNumber *font = [[NSUserDefaults standardUserDefaults] objectForKey:syav_cancelOptFont];
    if (font) {
        return [UIFont systemFontOfSize:font.floatValue];
    }
    return [UIFont systemFontOfSize:18];
}

+ (UIColor *)syav_cancelOptTextColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_cancelOptTextColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"848484"];
}

+ (UIColor *)syav_cancelOptBackgroundColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_cancelOptBackgroundColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"e9e9e9"];
}

+ (UIColor *)syav_cancelOptHighlightBackgroundColor {
    NSString *color = [[NSUserDefaults standardUserDefaults] objectForKey:syav_cancelOptHighlightBackgroundColor];
    if (color) {
        return [UIColor syav_hexColor:color];
    }
    return [UIColor syav_hexColor:@"d6d6d6"];
}

+ (void)syav_setTitleLabelTextColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_titleLabelTextColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setContentLabelTextColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_contentLabelTextColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setSpliterTextColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_spliterTextColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setOptionSpliterTextColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_optionSpliterTextColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setNormalOptFont:(CGFloat)font {
    [[NSUserDefaults standardUserDefaults] setObject:@(font) forKey:syav_normalOptFont];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setNormalOptTextColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_normalOptTextColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setNormalOptBackgroundColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_normalOptBackgroundColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setNormalOptHighlightBackgroundColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_normalOptHighlightBackgroundColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setCancelOptFont:(CGFloat)font {
    [[NSUserDefaults standardUserDefaults] setObject:@(font) forKey:syav_cancelOptFont];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setCancelOptTextColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_cancelOptTextColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setCancelOptBackgroundColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_cancelOptBackgroundColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)syav_setCancelOptHighlightBackgroundColor:(NSString *)color {
    [[NSUserDefaults standardUserDefaults] setObject:color forKey:syav_cancelOptHighlightBackgroundColor];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
