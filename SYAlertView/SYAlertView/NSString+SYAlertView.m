//
//  NSString+SYAlertView.m
//  SYAlertView
//
//  Created by sunny on 2017/3/6.
//  Copyright © 2017年 CepheusSun. All rights reserved.
//

#import "NSString+SYAlertView.h"

@implementation NSString (SYAlertView)

- (CGSize)syav_stringSizeWithFont:(UIFont *)font maxSize:(CGSize)size {
    return [self boundingRectWithSize:size
                              options:NSStringDrawingUsesFontLeading |
            NSStringDrawingUsesLineFragmentOrigin
                           attributes:@{NSFontAttributeName:font}
                              context:nil].size;
}

@end
