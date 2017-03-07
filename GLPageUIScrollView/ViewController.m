//
//  ViewController.m
//  GLPageUIScrollView
//
//  Created by 高磊 on 2017/3/3.
//  Copyright © 2017年 高磊. All rights reserved.
//

#import "ViewController.h"
#import "GLPageScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GLPageScrollView *pageScrollView = [[GLPageScrollView alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, 200)];
    [self.view addSubview:pageScrollView];
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < 5; i++) {
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpeg",i + 1]]];
    }
    
    pageScrollView.images = images;
//    [pageScrollView setTimeinterval:2];
    pageScrollView.didSelectIndexBlock = ^(NSInteger index)
    {
            NSLog(@" 打印信息 点击:%ld",(long)index);
    };
    
    pageScrollView.didScrollToIndexBlock = ^(NSInteger index)
    {
            NSLog(@" 打印信息 滚动:%ld",(long)index);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
