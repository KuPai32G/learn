//
//  MessageViewController.m
//  learn-01
//
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "MessageViewController.h"
#import "Header.h"
@implementation MessageViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(writeClick)];
     self.navigationItem.rightBarButtonItem.enabled = NO;
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
    cell.textLabel.text = [NSString stringWithFormat:@"text-message%ld",indexPath.row];

    return cell;
    
}
- (void)writeClick{
    LJPLog(@"1");
}
@end
