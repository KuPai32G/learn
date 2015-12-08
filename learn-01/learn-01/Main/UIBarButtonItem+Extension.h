//
//  UIBarButtonItem+Extension.h
//  learn-01
//
//  Created by 蝌蚪豪思 on 15/12/8.
//  Copyright © 2015年 LJP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithTarget:target action:(SEL)action image:(NSString *)image hightImage:(NSString *)hightImage;

@end
