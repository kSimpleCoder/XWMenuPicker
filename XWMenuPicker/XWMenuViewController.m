//
//  XWMenuViewController.m
//  XWMenuPickerDemo
//
//  Created by 刘小武 on 16/1/9.
//  Copyright © 2016年 刘小武. All rights reserved.
//

#import "XWMenuViewController.h"
#import "XWMenuFlowLayout.h"
#import "XWMenuCollectionViewCell.h"
#import "XWMenuReusableView.h"
#import "XWDragCellCollectionView.h"


@interface XWMenuViewController ()<XWDragCellCollectionViewDataSource, XWDragCellCollectionViewDelegate>

@property (nonatomic, strong)XWDragCellCollectionView *chanlView;
@property (nonatomic, strong)XWMenuFlowLayout *layout;

@end

static NSString * const reuseIdentifier = @"XWMenuCollectionViewCell";

@implementation XWMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = NO;
//    [self setTitle:@"栏目管理" withBackButtonStyle:UIButtonStyleBack];
    [self.view addSubview:self.chanlView];
    
    
    [self.chanlView registerClass:[XWMenuCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    [self.chanlView registerClass:[XWMenuReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"sectionHeader"];
    
}

-(void)newValue:(id)arg{
    
    _dateArr = [NSMutableArray arrayWithArray:arg];
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return _dateArr.count;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_dateArr[section] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    XWMenuCollectionViewCell *cell = [XWMenuCollectionViewCell cellWithCollectionView:collectionView indexPath:indexPath frame:CGRectMake(0, 0, 28, 30)];
    cell.chanltitle = _dateArr[indexPath.section][indexPath.item];
    
    return cell;
}

- (NSArray *)dataSourceArrayOfCollectionView:(XWDragCellCollectionView *)collectionView{
    return self.dateArr;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSMutableArray *topArr = [NSMutableArray arrayWithArray:_dateArr[0]];
    NSMutableArray *bottomArr = [NSMutableArray arrayWithArray:_dateArr[1]];
    
    NSInteger topCount = topArr.count;
    NSInteger bottomCount = bottomArr.count;
    
    NSString *selectStr = _dateArr[indexPath.section][indexPath.item];
    
    if (indexPath.section == 0) {
        [bottomArr insertObject:selectStr atIndex:bottomCount];
        [topArr removeObjectAtIndex:indexPath.item];
    } else if (indexPath.section == 1) {
        [topArr insertObject:selectStr atIndex:topCount];
        [bottomArr removeObjectAtIndex:indexPath.item];
    }
    
    _dateArr = @[topArr, bottomArr].mutableCopy;
    
    [self.chanlView reloadData];
    
}

//头部和尾部
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath

{
    
    UICollectionReusableView *reusableview = nil;
    
    if (kind == UICollectionElementKindSectionHeader){
        
        XWMenuReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"sectionHeader" forIndexPath:indexPath];
        
        if (!headerView) {
            headerView = [[XWMenuReusableView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 50)];
        }
        
        reusableview = headerView;
        
        if (indexPath.section == 0) {
            headerView.title = @"    已选频道";
        } else if (indexPath.section == 1) {
            headerView.title = @"    未选频道";
        }
        
    }
    
    if (kind == UICollectionElementKindSectionFooter){
        
        XWMenuReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"sectionHeader" forIndexPath:indexPath];
        
        if (!footerview) {
            footerview = [[XWMenuReusableView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 50)];
        }
        
        reusableview = footerview;
        
    }
    
    return reusableview;
}

#pragma mark - <XWDragCellCollectionViewDelegate>

- (void)dragCellCollectionView:(XWDragCellCollectionView *)collectionView newDataArrayAfterMove:(NSArray *)newDataArray{
    self.dateArr = newDataArray.mutableCopy;
}


- (UICollectionView *)chanlView {
    if (!_chanlView) {
        _chanlView = [[XWDragCellCollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:self.layout];
        _chanlView.delegate = self;
        _chanlView.dataSource = self;
        _chanlView.shakeLevel = 3.0f;
        _chanlView.backgroundColor = [UIColor whiteColor];
    }
    return _chanlView;
}


- (XWMenuFlowLayout *)layout {
    if (!_layout) {
        _layout = [[XWMenuFlowLayout alloc] init];
    }
    return _layout;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = YES;
}


@end
