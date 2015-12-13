//
//  ViewController.m
//  network
//
//  Created by user on 15/12/12.
//  Copyright © 2015年 mredrock. All rights reserved.
//


#import "ViewController.h"
#import "TestViewController.h"

#define kRequestLoginUrl @"http://rainytunes.us/Api/verify.php"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loginButton.layer.borderWidth = 0.5;
    self.loginButton.layer.borderColor = [UIColor blueColor].CGColor;
    self.loginButton.layer.cornerRadius = self.loginButton.frame.size.height/4;
   
    
    
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.loginTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
}


- (IBAction)toLogin:(id)sender {
    NSURL *url = [NSURL URLWithString:kRequestLoginUrl];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setTimeoutInterval:10];
    NSString *param = [NSString stringWithFormat:
                       @"stuNum=%@&password=%@"
                       ,self.loginTextField.text
                       ,self.passwordTextField.text];
    
    [request setHTTPBody:[param dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request
        completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
    {
//                NSString *string = [[NSString alloc]
//                                    initWithData:data
//                                        encoding:NSUTF8StringEncoding];
           NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
            NSLog(@"%@",dic);
    }];
    [task resume];
    
    [request setHTTPMethod:@"GET"];
    
//    NSError *error;
//
//    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
//    
//    
//    NSString *string = [[NSString alloc]
//                        initWithData:data
//                            encoding:NSUTF8StringEncoding];

//    NSLog(@"%@",string);
    
    
    NSLog(@"2333");
    
    
    
    
    
    
    
    
    
    UIStoryboard *sb = [UIStoryboard
                        storyboardWithName:@"Main"
                        bundle:[NSBundle mainBundle]];
   UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"vc"];
    
    
//    TestViewController *testVC = [[TestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    vc.navigationController.navigationBar.tintColor = [UIColor blackColor];
    vc.navigationItem.title = @"成功";
    vc.navigationController.navigationBar.tintColor=[UIColor redColor];

    
//    [self presentViewController:testVC animated:YES completion:nil];
    
    NSLog(@"asa");
}









@end
