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
}
// 重写Push方法
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    [super pushViewController:viewController animated:animated];
    // 查看push了多少个控制器
    NSLog(@"%ld  %@",self.viewControllers.count,viewController);
    
    if(self.viewControllers.count>1){
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        // 不能用setImage这个方法，使用后会出现BUG btn的位置不对，不写btn.width和btn.height的值会不出现
        [btn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted"] forState:UIControlStateHighlighted];
        // btn.currentBackgroundImage btn图片的尺寸
        btn.size = btn.currentBackgroundImage.size;
        
        UIButton *more = [UIButton buttonWithType:UIButtonTypeCustom];
        [more addTarget:self action:@selector(moreClick) forControlEvents:UIControlEventTouchUpInside];
        // 不能用setImage这个方法，使用后会出现BUG btn的位置不对，不写btn.width和btn.height的值会不出现
        [more setBackgroundImage:[UIImage imageNamed:@"navigationbar_more"] forState:UIControlStateNormal];
        [more setBackgroundImage:[UIImage imageNamed:@"navigationbar_more_highlighted"] forState:UIControlStateHighlighted];
        // btn.currentBackgroundImage btn图片的尺寸
        more.size = more.currentBackgroundImage.size;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:more];
  
    }

    
}
- (void)btnClick{
    [self popToRootViewControllerAnimated:YES];
}
- (void)moreClick{
    [self popToRootViewControllerAnimated:YES];
}
@end
