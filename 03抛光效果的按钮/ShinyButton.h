//
//  Shiny.h
//  03抛光效果的按钮
//
//  Created by 张非 on 16/9/13.
//  Copyright © 2016年 张非. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShinyButton : UIButton

// 属性声明
@property (nonatomic, strong) UIColor *myColor;

// 方式的声明
- (instancetype)initWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor; // 初始化
- (void)wasPress;
- (void)endedPress;
- (void)makeButtonShiny:(ShinyButton *)button withBackgroundColor:(UIColor *)backgroundColor;

@end
