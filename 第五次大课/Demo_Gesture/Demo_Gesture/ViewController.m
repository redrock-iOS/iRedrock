//
//  ViewController.m
//  Demo_Gesture
//
//  Created by RainyTunes on 11/29/15.
//  Copyright © 2015 We.Can. All rights reserved.
//

#import "ViewController.h"
#import "WeKit.h"

@interface ViewController ()
@property (nonatomic, strong, readwrite) UIButton *button1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button1 = [UIButton templateButtonWithOrigin:CGPointMake(120, 250)];
    UISwipeGestureRecognizer *gesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe)];
    gesture.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:gesture];
    [self.view addSubview:self.button1];
};

- (void)swipe {
    self.button1.transform = CGAffineTransformRotate(self.button1.transform, M_PI / 6);
}
@end
