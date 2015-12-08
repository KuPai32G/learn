//
//  UIBarButtonItem+Extension.m
//  learn-01
//
//  Created by 蝌蚪豪思 on 15/12/8.
//  Copyright © 2015年 LJP. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"
#import "UIView+Extension.h"
@implementation UIBarButtonItem (Extension)
/**
 *  抽取导航栏方法
 *
 *  @param target     确定对象
 *  @param action     确定传进来的点击方法
 *  @param image      图片
 *  @param hightImage 高亮的图片
 *
 *  @return 返回创建好的Item
 */
+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image hightImage:(NSString *)hightImage{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 不能用setImage这个方法，使用后会出现BUG btn的位置不对，不写btn.width和btn.height的值会不出现
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    // btn.currentBackgroundImage btn图片的尺寸
    btn.size = btn.currentBackgroundImage.size;
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:btn];
    return item;
    
}

@end
