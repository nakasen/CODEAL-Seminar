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
    NSDictionary *scoreDictionary = @{@"math":@70, @"english":@60, @"japanese":@70};
    report.scoreDict = scoreDictionary;
    
    NSLog(@"学籍番号%@、%@さんの３科目平均点は、%.2f点です。",
          report.studentIDNo,
          report.name,
          [report average:report.scoreDict]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
