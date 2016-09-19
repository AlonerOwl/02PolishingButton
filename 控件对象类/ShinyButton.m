//
//  Shiny.m
//  03抛光效果的按钮
//
//  Created by 张非 on 16/9/13.
//  Copyright © 2016年 张非. All rights reserved.
//

#import "ShinyButton.h"

@implementation ShinyButton

// 初始化
- (instancetype)initWithFrame:(CGRect)frame withBackgroundColor:(UIColor *)backgroundColor {
    if (self = [super initWithFrame:frame]) {
        self.myColor = backgroundColor;
        [self makeButtonShiny:self withBackgroundColor:backgroundColor];
        [self addTarget:self action:@selector(wasPress) forControlEvents:(UIControlEventTouchDown)];
        [self addTarget:self action:@selector(endedPress) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return self;
}

- (void)wasPress {
    UIColor *newColor;
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0, white = 0.0;
    if ([self.myColor respondsToSelector:@selector(getRed:green:blue:alpha:)]) {
        [self.myColor getRed:&red green:&green blue:&blue alpha:&alpha];
        [self.myColor getWhite:&white alpha:&alpha];
    }
    self.backgroundColor = newColor;
}

- (void)endedPress {
    self.backgroundColor = self.myColor;
}

- (void)makeButtonShiny:(ShinyButton *)button withBackgroundColor:(UIColor *)backgroundColor {
    CALayer *layer = button.layer;
    layer.cornerRadius = 8.0f;
    layer.masksToBounds = YES;
    layer.borderWidth = 2.0f;
    layer.borderColor = [UIColor colorWithWhite:0.4f alpha:0.2f].CGColor;
    
    CAGradientLayer *shineLayer = [CAGradientLayer layer];
    shineLayer.frame = button.layer.bounds;
    // 抛光颜色
    shineLayer.colors = [NSArray arrayWithObjects:
                         (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                         (id)[UIColor colorWithWhite:1.0f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:0.75f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:0.4f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                         nil];
    
    // 抛光位置
    shineLayer.locations = [NSArray arrayWithObjects:
                            [NSNumber numberWithFloat:0.0f],
                            [NSNumber numberWithFloat:0.5f],
                            [NSNumber numberWithFloat:0.5f],
                            [NSNumber numberWithFloat:0.8f],
                            [NSNumber numberWithFloat:1.0f],
                            nil];
    
    [button.layer addSublayer:shineLayer];
    [button setBackgroundColor:backgroundColor];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
