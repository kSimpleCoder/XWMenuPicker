//
//  XWMenuItemLabel.m
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import "XWMenuItemLabel.h"

@implementation XWMenuItemLabel

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    UIBezierPath *borderPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.cornerRadius];
    borderPath.lineWidth = self.borderWidth;
    UIColor *strokeColor = self.borderColor;
    borderPath.lineCapStyle  = kCGLineCapRound;
    borderPath.lineJoinStyle = kCGLineCapRound;
    borderPath.flatness = 0.0f;
    [strokeColor set];
    [borderPath stroke];

}

- (void)setBgColor:(UIColor *)bgColor {
    _bgColor = bgColor;
    
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
}

- (void)setBorderWidth:(CGFloat )borderWidth
{
    _borderWidth = borderWidth;
    
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    
}


@end
