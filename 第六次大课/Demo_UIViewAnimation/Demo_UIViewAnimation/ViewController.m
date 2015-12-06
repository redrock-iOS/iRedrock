//
//  ViewController.m
//  Demo_UIViewAnimation
//
//  Created by RainyTunes on 12/6/15.
//  Copyright © 2015 We.Can. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"

@interface ViewController ()
@property (nonatomic, strong, readwrite) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyButton *button = [[MyButton alloc]init];
    [self.view addSubview:button];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}



@end
