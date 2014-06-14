//
//  ViewController.m
//  Ex03
//
//  Created by Satoshi Nakagawa on 2014/04/07.
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
    
    Report *report = [[Report alloc] init];
    report.studentIDNo = @"AA001";
    report.name = @"コデアル太郎";
    NSDictionary *scoreDictionary = @{@"math":@60, @"english":@80, @"japanese":@80};
    report.scoreDict = scoreDictionary;
    
    [report display];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
