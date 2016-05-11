//
//  WYButtomMenu.h
//  03-24QQ空间
//
//  Created by sialice on 16/3/26.
//  Copyright © 2016年 sialice. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WYButtomMenuItem;
@interface WYButtomMenu : UIView
/** device direction */
@property (nonatomic, assign, getter=isVerticalStatus) BOOL verticalStatus;
/** Create Menu from items */
+ (instancetype)menuWithButtomItems:(NSArray *)items;
- (instancetype)initWithButtomItems:(NSArray *)items;
@end

@interface WYButtomMenuItem : NSObject
/** Button图片 */
@property (nonatomic, copy) NSString *imgName;
/** init function */
+ (instancetype)menuItemWithImageName:(NSString *)imgName;
- (instancetype)initWithImageName:(NSString *)imgName;
@end