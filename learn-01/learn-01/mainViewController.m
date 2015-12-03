//
//  mainViewController.m
//  learn-01
//
//  Created by 蝌蚪豪思 on 15/12/3.
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "mainViewController.h"
#import "Header.h"
@implementation mainViewController
-(void)viewDidLoad{
    
    
    HomeViewController *home = [[HomeViewController alloc]init];
    
    [self addChildViewController:home title:@"主页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    MessageViewController *message = [[MessageViewController alloc]init];
    [self addChildViewController:message title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    DiscoverViewController *discover = [[DiscoverViewController alloc]init];
    [self addChildViewController:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    MyViewController *my = [[MyViewController alloc]init];
    [self addChildViewController:my title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    

}
-(void)addChildViewController:(UIViewController *)controller title:(NSString *)title image:(NSString*)image selectedImage:(NSString *)selectedImage{
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 关闭颜色的自动渲染，使传进来的颜色为原始颜色
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    dict[NSForegroundColorAttributeName]=[UIColor blackColor];
    
    NSMutableDictionary *dict1 = [[NSMutableDictionary alloc]init];
    dict1[NSForegroundColorAttributeName]=[UIColor orangeColor];
    [controller.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    [controller.tabBarItem setTitleTextAttributes:dict1 forState:UIControlStateSelected];
    controller.view.backgroundColor = [UIColor whiteColor];
    // 添加子视图控制器
    [self addChildViewController:controller];
}

@end
