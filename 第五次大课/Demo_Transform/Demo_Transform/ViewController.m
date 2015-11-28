//
//  ViewController.m
//  Demo_TableView
//
//  Created by RainyTunes on 11/29/15.
//  Copyright © 2015 We.Can. All rights reserved.
//

#import "ViewController.h"
#import "WeKit.h"

@interface ViewController ()
@property (nonatomic, strong, readwrite) UIButton *button1, *button2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.button1 = [UIButton templateButtonWithOrigin:CGPointMake(120, 250)];
    self.button2 = [UIButton templateButtonWithOrigin:CGPointMake(120, 350)];
    
    [self.view addSubview:self.button1];
    [self.view addSubview:self.button2];
    
    [self.button1 addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click {
    self.button2.transform = CGAffineTransformRotate(self.button2.transform, M_PI / 6);
}


@end
