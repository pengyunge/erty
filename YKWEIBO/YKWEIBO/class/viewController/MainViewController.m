//
//  MainViewController.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "MainViewController.h"
#import "YKDropDownMenu.h"
#import "YKTitleTableViewController.h"
@interface MainViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation MainViewController
- (void)loadView {
    [super loadView];
    self.mv = [[MainView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.mv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mv.table.dataSource = self;
    self.mv.table.delegate  =self;
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem addBarWithTarget:self Action:@selector(leftAction) image:@"navigationbar_friendsearch" hightLight:@"navigationbar_friendsearch_highlighted"];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem addBarWithTarget:self Action:@selector(rightAction) image:@"navigationbar_pop" hightLight:@"navigationbar_pop_highlighted"];
    
    UIButton *btn = [[UIButton alloc] init];
//    btn.backgroundColor = [UIColor greenColor];
    btn.width = 150;
    btn.height = 30;
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    [btn setTitle:@"尹晓楠" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateNormal];
    btn.imageEdgeInsets = UIEdgeInsetsMake(0, 100, 0, 0);
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 30);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = btn;
    // Do any additional setup after loading the view.
}

- (void)btnAction:(UIButton *)btn;
{
    //显示下拉菜单
    YKDropDownMenu *menu = [YKDropDownMenu menu];
    YKTitleTableViewController *table = [[YKTitleTableViewController alloc] init];
    table.view.height = 150;
    table.view.width = 150;
    menu.contentController = table;
    //显示
    [menu show:btn];
    
//    [menu dismiss];

    
    //self.mv.window = [UIApplication sharedApplication].keyWindow;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}
- (void)leftAction
{
    NSLog(@"点我");
}

- (void)rightAction
{
    NSLog(@"点我");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indenti = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indenti];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indenti];
    }
//    cell.textLabel.text = @"测试数据";
    return cell;
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
