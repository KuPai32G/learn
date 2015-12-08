//
//  DiscoverViewController.m
//  learn-01
//
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "DiscoverViewController.h"

@implementation DiscoverViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    UISearchBar *search = [[UISearchBar alloc]init];
    search.scopeBarBackgroundImage = [UIImage imageNamed:@"searchbar_textfield_background"];
    self.navigationItem.titleView = search;
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
    cell.textLabel.text = [NSString stringWithFormat:@"text-discover%ld",indexPath.row];

    return cell;
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}
@end
