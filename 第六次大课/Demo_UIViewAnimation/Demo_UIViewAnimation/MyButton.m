//
//  MyButton.m
//  Demo_UIViewAnimation
//
//  Created by RainyTunes on 12/6/15.
//  Copyright © 2015 We.Can. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton
- (instancetype)init {
    self = [super init];
    self.frame =  CGRectMake(100, 100, 200, 200);
    self.backgroundColor = [UIColor orangeColor];
    [self setTitle:@"button" forState:UIControlStateNormal];
    [self addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    return self;
}

- (void)click {
    //首尾式动画
    [UIView beginAnimations:nil context:nil];
    //执行动画
    //设置动画执行时间
    [UIView setAnimationDuration:1.0];
    //设置代理，配合下面的事件调用
    [UIView setAnimationDelegate:self];
    //设置动画执行完毕调用的事件
    [UIView setAnimationDidStopSelector:@selector(didStopAnimation)];
    
    self.backgroundColor = [UIColor purpleColor];
    [UIView commitAnimations];
}



- (void)didStopAnimation {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    //设置代理，配合下面的事件调用
    [UIView setAnimationDelegate:self];
    //设置动画执行完毕调用的事件
    [UIView setAnimationDidStopSelector:@selector(click)];
    self.backgroundColor = [UIColor orangeColor];
    [UIView commitAnimations];
}
@end
