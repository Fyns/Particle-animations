//
//  ViewController.m
//  YJ_粒子动画效果
//
//  Created by yangjian on 2017/2/13.
//  Copyright © 2017年 yangjian. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "Animation_View.h"

@interface ViewController (){
    Animation_View *animationView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    animationView = [[Animation_View alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    animationView.endAnimationBlock = ^(){
        NSLog(@"动画结束");
    };
    [self.view addSubview:animationView];
    
    
    UIButton *clickedBtn = [[UIButton alloc]initWithFrame:CGRectMake((SCREEN_WIDTH - 220)*0.5,100, 220, 150)];
    [clickedBtn setTitle:@"点" forState:UIControlStateNormal];
    [clickedBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [clickedBtn setBackgroundImage:[UIImage imageNamed:@"奖励"] forState:UIControlStateNormal];
    [clickedBtn addTarget:self action:@selector(tapClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view sendSubviewToBack:clickedBtn];
    [self.view addSubview:clickedBtn];
    
    
    
}




-(void)tapClicked{
    
    [animationView beginAnimationMethod];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
