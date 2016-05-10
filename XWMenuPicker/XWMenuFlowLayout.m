//
//  XWMenuFlowLayout.m
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import "XWMenuFlowLayout.h"

@implementation XWMenuFlowLayout

- (void)prepareLayout {
    [super prepareLayout];
    self.itemSize = CGSizeMake(80, 30);
    self.minimumInteritemSpacing = 10;
    self.minimumLineSpacing = 10;
    self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    self.headerReferenceSize = CGSizeMake(300, 50);
}

@end
