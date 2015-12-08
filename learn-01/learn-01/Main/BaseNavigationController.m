//
//  BaseNavigationController.m
//  learn-01
//
//  Created by Lijinpeng on 15/12/3.
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "BaseNavigationController.h"
#import "Header.h"

@implementation BaseNavigationController
- (void)viewDidLoad{
    [super viewDidLoad];
    
    // 修改Item的属性
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *textAttrs = [[NSMutableDictionary alloc]init];
    textAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    
    NSMutableDictionary *disableTextAttrs = [[NSMutableDictionary alloc]init];
    disableTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:0.5];
    disableTextAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    [item setTitleTextAttributes:disableTextAttrs forState:UIControlStateDisabled];
    
}
// 重写Push方法 
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
        

    if(self.viewControllers.count>0){
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(btnClick) image:@"navigationbar_back" hightImage:@"navigationbar_back_highlighted"];
        
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(moreClick) image:@"navigationbar_more" hightImage:@"navigationbar_more_highlighted"];
        
    }
    [super pushViewController:viewController animated:animated];
  
    
}
- (void)btnClick{
    [self popViewControllerAnimated:YES ];
}
- (void)moreClick{
    [self popToRootViewControllerAnimated:YES];
}
@end
