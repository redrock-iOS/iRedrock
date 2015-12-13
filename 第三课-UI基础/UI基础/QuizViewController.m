//
//  QuizViewController.m
//  UI基础
//
//  Created by 张润峰 on 15/10/31.
//  Copyright © 2015年 张润峰. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

//用于储存数据
@property (nonatomic) int currentQuestionIndex;
@property (nonatomic) NSArray * questions;
@property (nonatomic) NSArray * answers;

//设置插座变量
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(273, 635, 100, 30)];
    [button setTitle:@"分享" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
    
    }
//为了确保用户看到界面时，数组已经存好数据，
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //创建两个数组，并将questions和answers对象指向对应数组
        self.questions = @[@"我是谁？",
                           @"我从哪里来？",
                           @"我要到哪里去？"];
        
        self.answers = @[@"帅比",
                         @"娘胎",
                         @"下一个娘胎"];
    }
    return self;
}


- (IBAction)showQuestion:(id)sender{
    self.currentQuestionIndex ++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //将问题字符串显示在questionLabel上
    self.questionLabel.text = question;
    
    // 重置answerLabel
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}

@end
