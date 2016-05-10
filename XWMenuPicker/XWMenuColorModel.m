//
//  XWMenuColorModel.m
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import "XWMenuColorModel.h"

@implementation XWMenuColorModel

- (instancetype)initWithBgColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor
{
    if (self = [super init]) {
        self.bgColor = bgColor;
        self.borderColor = borderColor;
    }
    return self;
}

+ (instancetype)colorWithBgColor:(UIColor *)bgColor borderColor:(UIColor *)borderColor
{
    return [[self alloc] initWithBgColor:bgColor borderColor:borderColor];
}

@end
