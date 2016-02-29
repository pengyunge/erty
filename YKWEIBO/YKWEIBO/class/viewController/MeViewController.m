//
//  MeViewController.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation MeViewController
- (void)loadView {
    [super loadView];
    self.mmv = [[MeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.mmv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mmv.table.dataSource = self;
    self.mmv.table.delegate = self;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置" style:UIBarButtonItemStyleDone target:self action:@selector(rightAction)];
    
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
