//
//  SYAlertView+Add.h
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import "SYAlertView.h"

@interface SYAlertView (Add)

+ (SYAlertView *)showAlertViewWithOptions:(NSArray *)opts withCallback:(syalert_selectedCallback)callback;

+ (SYAlertView *)showAlertViewWithTitle:(NSString *)title
                            withContent:(NSString *)content
                            withOptions:(NSArray *)opts
                           withCallback:(syalert_selectedCallback)callback;

+ (SYAlertView *)showAlertViewWithTitle:(NSString *)title
                            withContent:(NSString *)content
                            withOptions:(NSArray *)opts
                   isHiddenCancelOption:(BOOL)isHiddenCancelOption
                           withCallback:(syalert_selectedCallback)callback;

+ (SYAlertView *)showAlertViewWithTitle:(NSString *)title
                            withContent:(NSString *)content
                            withOptions:(NSArray *)opts
                   isHiddenCancelOption:(BOOL)isHiddenCancelOption
                        isAlwaysVisible:(BOOL)isAlwaysVisible
                           withCallback:(syalert_selectedCallback)callback;

+ (SYAlertView *)showCustomizedView:(UIView *)view alsoSize:(CGSize)size;

+ (void)closeAllAlertView;

@end
