//
//  searchBar.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/25.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "searchBar.h"

@implementation searchBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        self.borderStyle = UITextBorderStyleRoundedRect;
            self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.width = 30;
        imageView.height = 30;
        imageView.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        self.contentMode = UIViewContentModeCenter;
        self.leftView = imageView;
        self.leftViewMode = UITextFieldViewModeAlways;
        self.placeholder = @"大家都在搜:";
        self.font  =[UIFont systemFontOfSize:15];
    }
    return self;
}

+ (instancetype)searchBar
{
    return [[self alloc] init];
}
@end
