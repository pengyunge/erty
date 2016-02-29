//
//  DiscoverViewController.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "DiscoverViewController.h"

@interface DiscoverViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation DiscoverViewController
- (void)loadView {
    [super loadView];
    self.dv = [[DiscoverView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view = self.dv;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dv.table.dataSource = self;
    self.dv.table.delegate = self;
    
    
//    UISearchBar *search = [[UISearchBar alloc] init];
//    search.width = 350;
//    search.height = 40;
//    search.backgroundImage = [UIImage imageNamed:@"searchbar_textfield_background@2x.png"];
//    search.backgroundColor = [UIColor redColor];
//    self.navigationItem.titleView = search;
//    //添加搜索框
    searchBar *search = [searchBar searchBar];
    search.height = 40;
    search.width = 370;
    self.navigationItem.titleView = search;
    
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
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
