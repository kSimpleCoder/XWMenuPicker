//
//  XWMenuReusableView.m
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import "XWMenuReusableView.h"

@implementation XWMenuReusableView
{
    UIView *underLine;
    UILabel *titleLabel;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void) setupView {
    
    //标题
    titleLabel = [[UILabel alloc] init];
    titleLabel.textColor = RGBColorAlpha(0x1b, 0x1b, 0x1b, 1);
    titleLabel.backgroundColor  = [UIColor whiteColor];
    [self addSubview:titleLabel];
    
    //下划线
    underLine = [[UIView alloc] init];
    underLine.backgroundColor = RGBColorAlpha(0xe5, 0xe5, 0xe5, 1);
    [self addSubview:underLine];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //标题
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleW = self.width;
    CGFloat titleH = self.height - 1;
    titleLabel.frame = CGRectMake(titleX, titleY, titleW, titleH);
    
    //下划线
    underLine.frame = CGRectMake(titleLabel.left + 10, titleLabel.bottom, titleLabel.width - 10, 1);
}

- (void)setTitle:(NSString *)title {
    titleLabel.text = title;
}

@end
