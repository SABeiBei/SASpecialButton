//
//  ViewController.m
//  SASpecialButton
//
//  Created by Andy on 15/9/17.
//  Copyright (c) 2015年 Andy. All rights reserved.
//

#import "ViewController.h"
#import "SAButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self prepareButton];
}

- (void)prepareButton {
    
    SAButton *btn = [[SAButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"点击前" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)clickButton:(SAButton *)sender {
    
    //[sender changeButtonText:[NSString stringWithFormat:@"点击后%d",arc4random()%100]];
    [sender changeButtonText:@"点击后"];
    
}

@end
