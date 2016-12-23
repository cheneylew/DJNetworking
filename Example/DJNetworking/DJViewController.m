//
//  DJViewController.m
//  DJNetworking
//
//  Created by Deju Liu on 12/23/2016.
//  Copyright (c) 2016 Deju Liu. All rights reserved.
//

#import "DJViewController.h"

@interface DJViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation DJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self makeScrollView];
    [self makeLeftButtons];
    [self makeRightButtons];
}

- (void)makeLeftButtons {
    self makeLeftButton:@"" index:0
}

- (void)makeRightButtons {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 通用方法

- (void)makeScrollView{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, 2000);
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
}

- (UIButton *)makeLeftButton:(NSString *)title index:(NSInteger) idx {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, idx*35, 150, 30);
    btn.backgroundColor = [UIColor blueColor];
    btn.titleLabel.adjustsFontSizeToFitWidth = YES;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.layer.cornerRadius = 2.0f;
    [self.scrollView addSubview:btn];
    return btn;
}

- (UIButton *)makeRightButton:(NSString *)title index:(NSInteger) idx {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(300, idx*35, 150, 30);
    btn.backgroundColor = [UIColor blueColor];
    btn.titleLabel.adjustsFontSizeToFitWidth = YES;
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.layer.cornerRadius = 2.0f;
    [self.scrollView addSubview:btn];
    return btn;
}

@end
