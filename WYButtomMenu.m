//
//  WYButtomMenu.m
//  03-24QQ空间
//
//  Created by sialice on 16/3/26.
//  Copyright © 2016年 sialice. All rights reserved.
//

#import "WYButtomMenu.h"

@interface WYButtomMenu ()
{
    /** Button模型数组 */
    NSMutableArray<WYButtomMenuItem *> *_items;
}

@end

@implementation WYButtomMenu

+ (instancetype)menuWithButtomItems:(NSArray *)items {
    return [[self alloc] initWithButtomItems:items];
}

- (instancetype)initWithButtomItems:(NSArray *)items {
    if (self = [super init]) {
        [self setItems:[NSMutableArray arrayWithArray:items]];
    }
    return self;
}

- (NSMutableArray<WYButtomMenuItem *> *)items {
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (void)setItems:(NSMutableArray *)items {
    _items = items;
    [self setupSubViews];
}

- (void)setupSubViews {
    NSInteger count = _items.count;
    for (int i = 0; i < count; i++) {
        WYButtomMenuItem *item = _items[i];
        // create sub btn
        UIButton *btn = [[UIButton alloc] init];
        [btn setImage:[UIImage imageNamed:item.imgName] forState:UIControlStateNormal];
        [self addSubview:btn];
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count;
    for (int i = 0; i < count; i++) {
        UIButton *btn = self.subviews[i];
        CGFloat btnW = self.verticalStatus ? self.bounds.size.width : self.bounds.size.width / count;
        CGFloat btnH = self.verticalStatus ? self.bounds.size.height / count : self.bounds.size.height;
        CGFloat btnX = self.verticalStatus ? 0 : btnW * i;
        CGFloat btnY = self.verticalStatus ? btnH * i : 0;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
    
}

@end

@implementation WYButtomMenuItem
+ (instancetype)menuItemWithImageName:(NSString *)imgName {
    return [[self alloc] initWithImageName:imgName];
}
- (instancetype)initWithImageName:(NSString *)imgName {
    if (self = [super init]) {
        self.imgName = imgName;
    }
    return self;
}

@end


















