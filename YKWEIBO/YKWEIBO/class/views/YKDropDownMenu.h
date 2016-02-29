//
//  YKDropDownMenu.h
//  YKWEIBO
//
//  Created by lanou3g on 16/1/25.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 * 设置下拉菜单，蒙板，使得下拉以后其他的控件点击事件失效
 */
@interface YKDropDownMenu : UIView
+ (instancetype)menu;

/**
 * 显示
 */
- (void)show:(UIView *)from;

/**
 * 关闭
 */
- (void)dismiss;
/**
 * 内容
 */
@property (nonatomic, strong) UIView *contentView;

/**
 * 内容控制器
 */
@property (nonatomic, strong) UIViewController *contentController;
@end
