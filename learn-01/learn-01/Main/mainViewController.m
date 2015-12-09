//
//  mainViewController.m
//  learn-01
//
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "mainViewController.h"
#import "Header.h"
#import "BaseNavigationController.h"
@implementation mainViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    
    HomeViewController *home = [[HomeViewController alloc]init];
    
    [self addChildViewController:home title:@"主页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    MessageViewController *message = [[MessageViewController alloc]init];
    [self addChildViewController:message title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    DiscoverViewController *discover = [[DiscoverViewController alloc]init];
    [self addChildViewController:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    MyViewController *my = [[MyViewController alloc]init];
    [self addChildViewController:my title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    

}
/**
 *  添加子控制器
 *
 *  @param controller    传进来的控制器
 *  @param title         标题
 *  @param image         未选中时的图标
 *  @param selectedImage 选中时的图标
 */
-(void)addChildViewController:(UIViewController *)controller
                        title:(NSString *)title
                        image:(NSString *)image
                selectedImage:(NSString *)selectedImage{
    
//    controller.tabBarItem.title = title;
//    controller.navigationItem.title = title;
    controller.title = title;//相当于上边的2行代码
    controller.tabBarItem.image = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 关闭颜色的自动渲染，使传进来的颜色为原始颜色
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
    dict[NSForegroundColorAttributeName]=[UIColor blackColor];
    
    NSMutableDictionary *dict1 = [[NSMutableDictionary alloc]init];
    dict1[NSForegroundColorAttributeName]=[UIColor orangeColor];
    
    [controller.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    [controller.tabBarItem setTitleTextAttributes:dict1 forState:UIControlStateSelected];
    // 给传进来的视图控制器包装一个导航控制器
    BaseNavigationController *nav = [[BaseNavigationController alloc]initWithRootViewController:controller];
    // 添加子视图控制器
    [self addChildViewController:nav];
}

@end
