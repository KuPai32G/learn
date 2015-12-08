//
//  HomeViewController.m
//  learn-01
//
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "HomeViewController.h"
#import "TestViewController.h"
#import "Header.h"
@implementation HomeViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(addClick) image:@"navigationbar_friendsearch" hightImage:@"navigationbar_friendsearch_highlighted"];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(scanClick) image:@"navigationbar_pop" hightImage:@"navigationbar_pop_highlighted"];
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
        
    }
    cell.textLabel.text = [NSString stringWithFormat:@"text-home%ld",indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    TestViewController *test = [[TestViewController alloc]init];
    test.title = @"";
    [self.navigationController pushViewController:test animated:YES];
}
- (void)addClick{
    LJPLog(@"测试");
}
- (void)scanClick{
    
}
@end
