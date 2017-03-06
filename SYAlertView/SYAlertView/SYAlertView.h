//
//  SYAlertView.h
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import <UIKit/UIKit.h>

UIKIT_EXTERN NSString * const SYAlertViewOptFont;
UIKIT_EXTERN NSString * const SYAlertViewOptNormalTextColor;
UIKIT_EXTERN NSString * const SYAlertViewOptDisableTextColor;
UIKIT_EXTERN NSString * const SYAlertViewOptHighlightTextColor;
UIKIT_EXTERN NSString * const SYAlertViewOptNormalBackgroundColor;
UIKIT_EXTERN NSString * const SYAlertViewOptDisableTextBackgroundColor;
UIKIT_EXTERN NSString * const SYAlertViewOptHighlightBackgroundColor;

typedef void (^ syalert_selectedCallback)(NSInteger index);

@interface SYAlertView : UIView

@property (nonatomic, strong) UIView *contextView;
@property (nonatomic, strong) UIView *alertView;
@property (nonatomic, strong) UIActivityIndicatorView *activityView;

@property (nonatomic) UIEdgeInsets titleInsets;
@property (nonatomic,strong) UILabel *titleLabel;

@property (nonatomic) UIEdgeInsets contentInsets;
@property (nonatomic,strong) UILabel *contentLabel;

@property (nonatomic,copy) NSString *cancelStr;

@property (nonatomic,strong) UIView *customView;
@property (nonatomic) CGSize customSize;

@property (nonatomic,strong) NSArray *options;


@property (nonatomic ,assign) BOOL isAlertViewVisible;

@property (nonatomic ,assign) BOOL isAlertViewVertical;

@property (nonatomic ,assign) BOOL isAlertViewAlwaysVisible;

@property (nonatomic ,assign) BOOL isAlertViewHiddenCancel;

@property (nonatomic ,assign) BOOL isAlertViewTapToClose;

/**
 普通按钮属性
 SYAlertViewOptFont = 18
 SYAlertViewOptNormalTextColor = whiteColor
 SYAlertViewOptNormalBackgroundColor = #41dbf5
 SYAlertViewOptHighlightBackgroundColor = #2fc9e4
 
 取消按钮属性
 SYAlertViewOptFont = 18
 SYAlertViewOptNormalTextColor = #848484
 SYAlertViewOptNormalBackgroundColor = #e9e9e9
 SYAlertViewOptHighlightBackgroundColor = #d6d6d6
 */
@property (nonatomic, strong) NSMutableDictionary *optAttributes;
@property (nonatomic, strong) NSMutableDictionary *cancelAttributes;

/**
 按钮最大高度
 默认为 47
 */
@property (nonatomic) CGFloat optHeight;

/**
 弹框最大宽度
 默认为 260
 */
@property (nonatomic) CGFloat optMaxWidth;
@property (nonatomic,copy) syalert_selectedCallback callback;

- (void)setEnable:(BOOL)enable alsoIndex:(NSInteger)index;

- (void)show;
- (void)showInView:(UIView *)view;
- (void)showActivityIndicatorWithTimeInterval:(NSTimeInterval)afterTime;
- (void)close;

@end
