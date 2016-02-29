//
//  YKDropDownMenu.m
//  YKWEIBO
//
//  Created by lanou3g on 16/1/25.
//  Copyright © 2016年 袁春凯. All rights reserved.
//

#import "YKDropDownMenu.h"
#import "YKDropDownMenu.h"

@interface YKDropDownMenu ()
//显示具体内容的容器
@property (nonatomic, strong) UIImageView *imageView;
@end
@implementation YKDropDownMenu

//懒加载
- (UIImageView *)imageView
{
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
        self.imageView = [[UIImageView alloc] init];
        self.imageView.image = [UIImage imageNamed:@"popover_background"];
        self.imageView.x = 100;
        self.imageView.y = 64;
        _imageView.userInteractionEnabled = YES;
//        self.imageView.width = 217;
//        self.imageView.height = 217;
        [self addSubview:self.imageView];
    }
    return _imageView;
}

//初始化
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    
   }
    return self;
}

+ (instancetype)menu
{
    return [[self alloc] init];
}
- (void)show:(UIView *)from
{
    //1 获得最上面的窗口
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    //2 添加到自己的窗口上
    [window addSubview:self];
    //3 设置尺寸
    self.frame = window.bounds;
    //4 调整灰色图片的位置
    //默认情况下，frame是以父控件左上角为原点
    //转换坐标
    CGRect newFrame = [from convertRect:from.bounds toView:window];
    self.imageView.centerX = CGRectGetMidX(newFrame);
    self.imageView.y = CGRectGetMaxY(newFrame);
}

- (void)setContentView:(UIView *)contentView
{
    
    _contentView = contentView;
    contentView.x = 10;
    contentView.y = 15;
    
    //设置灰色的高度
    self.imageView.height = CGRectGetMaxY(contentView.frame)+ 11;
    //设置灰色的宽度
    self.imageView.width = CGRectGetMaxX(contentView.frame)+7;
    //添加内容到灰色图片中
    [self.imageView addSubview:contentView];
}
    
- (void)setContentController:(UIViewController *)contentController
{
    _contentController = contentController;
    self.contentView = contentController.view;
}

/**
 * 销毁
 */
- (void)dismiss
{
    [self removeFromSuperview];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismiss];
}
@end
