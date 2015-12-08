//
//  MyViewController.m
//  learn-01
//
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "MyViewController.h"
#import "TestViewController.h"
@implementation MyViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"设置" style:0 target:self action:@selector(setting)];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
        
    }cell.textLabel.text = [NSString stringWithFormat:@"text-my%ld",indexPath.row];

    return cell;
    
}
- (void)setting{
    TestViewController *test = [[TestViewController alloc]init];
    [self.navigationController pushViewController:test animated:YES];
}
@end
