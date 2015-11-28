//
//  ViewController.m
//  Demo_TableView
//
//  Created by RainyTunes on 11/29/15.
//  Copyright © 2015 We.Can. All rights reserved.
//

#import "ViewController.h"
#import "WeKit.h"

@interface ViewController () <UITableViewDataSource>
@property (nonatomic, strong, readwrite) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:ScreenFrame];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"image.jpg"];
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
@end
