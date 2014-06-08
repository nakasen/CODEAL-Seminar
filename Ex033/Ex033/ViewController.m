//
//  ViewController.m
//  Ex033
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
    
    Report *report = [[Report alloc] init];
    report.gno = @"A10001";
    [report display];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
