//
//  ViewController.m
//  HelloWorld01
//
//  Created by Satoshi Nakagawa on 2014/06/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Score *score = [[Score alloc] init];
    score.math = 70;
    score.english = 70;
    score.japanese = 71;
    NSLog(@"3科目の平均点は%.2f点です。", [score average]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
