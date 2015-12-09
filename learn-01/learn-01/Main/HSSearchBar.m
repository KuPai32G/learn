//
//  HSSearchBar.m
//  learn-01
//
//  Created by 蝌蚪豪思 on 15/12/9.
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "HSSearchBar.h"
#import "Header.h"
@implementation HSSearchBar
-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.placeholder = @"输入搜索条件";
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        UIImageView *view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
        view.width = 30;
        view.height = 10;
        // UIViewContentModeCenter使图片居中
        view.contentMode = UIViewContentModeCenter;
        self.leftView = view;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    return self;
}
+ (instancetype)searchBar{
    return [[self alloc]init];
}

@end
