//
//  AppDelegate.m
//  learn-01
//
//  Created by 蝌蚪豪思 on 15/12/3.
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "AppDelegate.h"

#import "Header.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 设置主视图控制器
    self.window = [[UIWindow alloc]init];
    self.window.frame = [UIScreen mainScreen].bounds;
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    self.window.rootViewController = tabBar;
    tabBar.view.backgroundColor = [UIColor whiteColor];
    
    HomeViewController *home = [[HomeViewController alloc]init];
    
    [self addChildViewController:home title:@"主页" image:@"main_highlight" selectedImage:@"main_normal"];
    
    MessageViewController *message = [[MessageViewController alloc]init];
    [self addChildViewController:message title:@"消息" image:@"function_highlight" selectedImage:@"function_normal"];
    
    [tabBar addChildViewController:home];
    [tabBar addChildViewController:message];
    [self.window makeKeyAndVisible];

    return YES;
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
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
