//
//  XWMenuCollectionViewCell.h
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XWMenuItemLabel.h"

@interface XWMenuCollectionViewCell : UICollectionViewCell

/** 栏目名称 */
@property(nonatomic,strong)XWMenuItemLabel *chanlLabel;
@property(nonatomic, copy)NSString *chanltitle;

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath frame:(CGRect)frame;

@end
