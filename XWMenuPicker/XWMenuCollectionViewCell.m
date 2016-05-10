//
//  XWMenuCollectionViewCell.m
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import "XWMenuCollectionViewCell.h"
#import "XWMenuColorModel.h"

@interface XWMenuCollectionViewCell ()

@property (nonatomic, strong)NSArray *colors;

@end

@implementation XWMenuCollectionViewCell

+ (instancetype)cellWithCollectionView:(UICollectionView *)collectionView indexPath:(NSIndexPath *)indexPath frame:(CGRect)frame {
    static NSString *identifier = @"XWMenuCollectionViewCell";
    XWMenuCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[XWMenuCollectionViewCell alloc] initWithFrame:frame];
    }
    return cell;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    _chanlLabel = [[XWMenuItemLabel alloc] init];
    _chanlLabel.font = [UIFont systemFontOfSize:14.0];
    _chanlLabel.textColor = RGBColorAlpha(0x30, 0x30, 0x30, 1);
    _chanlLabel.textAlignment = NSTextAlignmentCenter;

    XWMenuColorModel *colorModel = [self randomColorModel];
    _chanlLabel.borderColor = colorModel.borderColor;
    _chanlLabel.backgroundColor = colorModel.bgColor;
    _chanlLabel.borderWidth = 1;
    _chanlLabel.cornerRadius = 0;
    [self.contentView addSubview:_chanlLabel];
    
}

//随机获得模型
- (XWMenuColorModel *)randomColorModel {
    return self.colors[arc4random() % self.colors.count];
}

- (NSArray *)colors {
    if (!_colors) {
        _colors = @[
                    [XWMenuColorModel colorWithBgColor:RGBColorAlpha(0xf2, 0xf6, 0xe9, 1) borderColor:RGBColorAlpha(0xb6, 0xcd, 0x89, 1)],
                    [XWMenuColorModel colorWithBgColor:RGBColorAlpha(0xf8, 0xf2, 0xec, 1) borderColor:RGBColorAlpha(0xfa, 0xc0, 0x84, 1)],
                    [XWMenuColorModel colorWithBgColor:RGBColorAlpha(0xf9, 0xea, 0xeb, 1) borderColor:RGBColorAlpha(0xfc, 0xa0, 0xa7, 1)],
                    [XWMenuColorModel colorWithBgColor:RGBColorAlpha(0xe8, 0xf6, 0xf6, 1) borderColor:RGBColorAlpha(0x8a, 0xd9, 0xdd, 1)],
                    [XWMenuColorModel colorWithBgColor:RGBColorAlpha(0xf2, 0xf2, 0xf2, 1) borderColor:RGBColorAlpha(0xc8, 0xc8, 0xc8, 1)]
                    ];
    }
    return _colors;
}

- (void)layoutSubviews {
    
    //选项
    CGFloat chanlX = self.contentView.left;
    CGFloat chanlY = self.contentView.top;
    CGFloat chanlW = self.contentView.width;
    CGFloat chanlH = self.contentView.height;
    _chanlLabel.frame = CGRectMake(chanlX, chanlY, chanlW, chanlH);
}

- (void)setChanltitle:(NSString *)chanltitle {
    _chanlLabel.text = chanltitle;
}


@end
