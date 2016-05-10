//
//  XWMenuColorModel.h
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XWMenuColorModel : NSObject

@property (nonatomic, strong) UIColor *bgColor;
@property (nonatomic, strong) UIColor *borderColor;

- (instancetype)initWithBgColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor;
+ (instancetype)colorWithBgColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor;

@end
