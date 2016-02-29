//
//  MyTabbarViewController.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "MyTabbarViewController.h"
#import "MainViewController.h"
#import "MessageViewController.h"
#import "DiscoverViewController.h"
#import "MeViewController.h"
#import "CustomViewController.h"
#define YKColor arc4random() % 256 / 255.0
@interface MyTabbarViewController ()

@end

@implementation MyTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    MainViewController *main = [[MainViewController alloc] init];
    //    UINavigationController *mnvc = [[UINavigationController alloc] initWithRootViewController:main];
    //    main.navigationItem.title = @"主页";
    
    [self addControllers:main image:@"tabbar_home" title:@"主页" selectImage:@"tabbar_home_selected"];
    
    //    self.tabBar.tintColor = [UIColor orangeColor];
    MessageViewController *message = [[MessageViewController alloc] init];
    
    //    UINavigationController *menvc = [[UINavigationController alloc] initWithRootViewController:message];
    //    message.navigationItem.title = @"消息";
    [self addControllers:message image:@"tabbar_message_center" title:@"消息" selectImage:@"tabbar_message_center_selected"];
    
    DiscoverViewController *discover = [[DiscoverViewController alloc] init];
    
    //    UINavigationController *dnvc = [[UINavigationController alloc] initWithRootViewController:discover];
    //    discover.navigationItem.title = @"发现";
    [self addControllers:discover image:@"tabbar_discover" title:@"发现" selectImage:@"tabbar_discover_selected"];
    
    
    MeViewController *me = [[MeViewController alloc] init];
    //    UINavigationController *invc = [[UINavigationController alloc] initWithRootViewController:me];
    //    me.navigationItem.title = @"我";
    [self addControllers:me image:@"tabbar_profile" title:@"我" selectImage:@"tabbar_profile_selected"];
    
    
    self.tabBar.barTintColor = [UIColor greenColor];
    
    //    self.viewControllers = @[mnvc, menvc, dnvc, invc];
    
    
    
    // Do any additional setup after loading the view.
}
/*
 ** @param
 **
 */
- (void)addControllers:(UIViewController *)viewController  image:(NSString *)imageName title:(NSString *)title selectImage:(NSString *)image
{
    viewController.title = title;
//    viewController.view.backgroundColor = [UIColor colorWithRed:YKColor green:YKColor blue:YKColor alpha:1];
    viewController.tabBarItem.image = [UIImage imageNamed:imageName];
    
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //    viewController.tabBarItem.title = title;
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[NSForegroundColorAttributeName] = [UIColor blackColor];
    [viewController.tabBarItem setTitleTextAttributes:dic forState:UIControlStateNormal];
    CustomViewController *invc = [[CustomViewController alloc] initWithRootViewController:viewController];
    [self addChildViewController:invc];
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
