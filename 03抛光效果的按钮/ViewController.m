//
//  ViewController.m
//  03抛光效果的按钮
//
//  Created by 张非 on 16/9/13.
//  Copyright © 2016年 张非. All rights reserved.
//

#import "ViewController.h"
#import "ShinyButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    // 实现蓝色效果的抛光效果
    CGRect rect1 = CGRectMake(120, 252, 100, 100);
    ShinyButton *shinyButton1 = [[ShinyButton alloc] initWithFrame:rect1 withBackgroundColor:[UIColor blueColor]];
    [shinyButton1 setTitle:@"抛光按钮1" forState:(UIControlStateNormal)];
    [shinyButton1 addTarget:self action:@selector(shinyAction) forControlEvents:(UIControlEventTouchUpInside)];
    
    CGRect rect2 = CGRectMake(100, 100, 150, 50);
    ShinyButton *shinyButton2 = [[ShinyButton alloc] initWithFrame:rect2 withBackgroundColor:[UIColor yellowColor]];
    [shinyButton2 setTitle:@"抛光按钮2" forState:(UIControlStateNormal)];
    
    [self.view addSubview:shinyButton1];
    [self.view addSubview:shinyButton2];
    [super viewDidLoad];
}

- (void)shinyAction {
    NSLog(@"haha");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
