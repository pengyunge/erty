//
//  CustomViewController.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "CustomViewController.h"
#import "UIView+Extention.h"
@interface CustomViewController ()

@end

@implementation CustomViewController

/*
 ** @param 设置导航栏字体样式
 ** @return
 */
+ (void)initialize {
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = [UIColor orangeColor];
    dic[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:dic forState:UIControlStateNormal];
    
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
    att[NSForegroundColorAttributeName] = [UIColor colorWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
    att[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    [item setTitleTextAttributes:att forState:UIControlStateDisabled];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    
    if (self.viewControllers.count > 0) {
        //自动显示和隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        
        //设置按钮的图片和渲染
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back@2x.png"] forState:UIControlStateNormal];
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted@2x.png"] forState:UIControlStateHighlighted];
        backBtn.size = backBtn.currentBackgroundImage.size;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
        
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [moreBtn addTarget:self action:@selector(rightAction) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back@2x.png"] forState:UIControlStateNormal];
        [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted@2x.png"] forState:UIControlStateHighlighted];
        moreBtn.size = moreBtn.currentBackgroundImage.size;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:moreBtn];
    }
    
    [super pushViewController:viewController animated:YES];
}
- (void)back
{
    [self popViewControllerAnimated:YES];
}

- (void)rightAction
{
    [self popToRootViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
