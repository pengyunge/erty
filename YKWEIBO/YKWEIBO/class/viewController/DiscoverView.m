//
//  DiscoverView.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/24.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "DiscoverView.h"

@implementation DiscoverView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}
- (void)setupView {
    self.backgroundColor = [UIColor cyanColor];
    self.table = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    [self addSubview:self.table];
}


@end
