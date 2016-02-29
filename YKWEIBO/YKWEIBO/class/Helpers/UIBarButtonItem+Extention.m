//
//  UIBarButtonItem+Extention.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "UIBarButtonItem+Extention.h"
#import "UIView+Extention.h"
@implementation UIBarButtonItem (Extention)
+ (UIBarButtonItem *)addBarWithTarget:(id)target Action:(SEL)action image:(NSString *)image hightLight:(NSString *)imageHight
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:imageHight] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
