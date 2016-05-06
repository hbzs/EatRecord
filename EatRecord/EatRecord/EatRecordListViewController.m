//
//  EatRecordListViewController.m
//  EatRecord
//
//  Created by hourunjing on 16/5/6.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

#import "EatRecordListViewController.h"

@interface EatRecordListViewController ()

@end

@implementation EatRecordListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDelegate & UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 162;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HBZEatRecordListCell"];
  
  return cell;
}

@end
