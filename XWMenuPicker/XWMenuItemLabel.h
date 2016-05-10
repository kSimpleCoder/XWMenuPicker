//
//  XWMenuItemLabel.h
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XWMenuItemLabel : UILabel

/** 圆角 */
@property (nonatomic, assign) CGFloat cornerRadius;
/** 变宽宽度 */
@property (nonatomic, assign) CGFloat borderWidth;
/** 变宽颜色 */
@property (nonatomic, strong) UIColor *borderColor;
/** 背景颜色 */
@property (nonatomic, strong) UIColor *bgColor;

@end
