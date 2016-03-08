//
//  ViewController.m
//  CustomSearchBarDemo
//
//  Created by 王春平 on 16/3/8.
//  Copyright © 2016年 wang. All rights reserved.
//

#import "ViewController.h"
#import "CustomSearchBar.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //测试
    CustomSearchBar *searchBar = [[CustomSearchBar alloc] initWithFrame:CGRectMake(10, 80, self.view.frame.size.width - 20, 40)];
    [searchBar getBlockFromOutSpace:^(UITextField *textField) {
        NSLog(@"text:%@", textField.text);
    }];
    [self.view addSubview:searchBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
