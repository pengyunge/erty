//
//  MessageViewController.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation MessageViewController
- (void)loadView {
    [super loadView];
    self.mev = [[MessageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.mev;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mev.table.dataSource = self;
    self.mev.table.delegate  = self;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction)];
    //这个item不能点击（就能显示Disable下的状态）
    self.navigationItem.rightBarButtonItem.enabled = NO;
    // Do any additional setup after loading the view.
}

//当view即将显示的时候就会执行下面
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}
- (void)rightAction
{
    NSLog(@"点我");
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *indenti = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indenti];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:indenti];
    }
    cell.textLabel.text = @"测试数据";
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
