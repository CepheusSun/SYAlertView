//
//  SYAlertView+Add.m
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import "SYAlertView+Add.h"
#import "UIColor+SYAlertView.h"

@implementation SYAlertView (Add)

+ (SYAlertView *)showAlertViewWithOptions:(NSArray *)opts
                             withCallback:(syalert_selectedCallback)callback {
    SYAlertView *view = [[SYAlertView alloc] init];
    view.options = opts;
    view.isAlertViewHiddenCancel = YES;
    view.isAlertViewVertical = YES;
    [view.optAttributes setObject:[UIFont systemFontOfSize:18] forKey:SYAlertViewOptFont];
    [view.optAttributes setObject:[UIColor syav_hexColor:@"4b4949"] forKey:SYAlertViewOptNormalTextColor];
    [view.optAttributes setObject:[UIColor whiteColor] forKey:SYAlertViewOptNormalBackgroundColor];
    [view.optAttributes setObject:[UIColor syav_hexColor:@"f5f5f5"] forKey:SYAlertViewOptHighlightBackgroundColor];
    view.callback = callback;
    view.isAlertViewTapToClose = YES;
    [view show];
    return view;
}

+ (SYAlertView *)showAlertViewWithTitle:(NSString *)title
                            withContent:(NSString *)content
                            withOptions:(NSArray *)opts
                           withCallback:(syalert_selectedCallback)callback {
        return [self showAlertViewWithTitle:title
                                withContent:content
                                withOptions:opts
                       isHiddenCancelOption:NO
                               withCallback:callback];
}

+ (SYAlertView *)showAlertViewWithTitle:(NSString *)title
                            withContent:(NSString *)content
                            withOptions:(NSArray *)opts
                   isHiddenCancelOption:(BOOL)isHiddenCancelOption
                           withCallback:(syalert_selectedCallback)callback {
        return [self showAlertViewWithTitle:title
                                withContent:content
                                withOptions:opts
                       isHiddenCancelOption:isHiddenCancelOption
                            isAlwaysVisible:NO withCallback:callback];
}

+ (SYAlertView *)showAlertViewWithTitle:(NSString *)title
                            withContent:(NSString *)content
                            withOptions:(NSArray *)opts
                   isHiddenCancelOption:(BOOL)isHiddenCancelOption
                        isAlwaysVisible:(BOOL)isAlwaysVisible
                           withCallback:(syalert_selectedCallback)callback {
    SYAlertView *view = [[SYAlertView alloc] init];
    view.options = opts;
    view.titleLabel.text = title;
    view.contentLabel.text = content;
    view.callback = callback;
    view.isAlertViewHiddenCancel = isHiddenCancelOption;
    view.isAlertViewAlwaysVisible = isAlwaysVisible;
    [view show];
    return view;
}

+ (SYAlertView *)showCustomizedView:(UIView *)view alsoSize:(CGSize)size {
    SYAlertView *alertView = [[SYAlertView alloc] init];
    alertView.customView = view;
    alertView.customSize = size;
    [alertView show];
    return alertView;
}

+ (void)closeAllAlertView {
    for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
        if ([view isKindOfClass:[SYAlertView class]]) {
            [(SYAlertView *)view close];
        }
    }
}

@end
