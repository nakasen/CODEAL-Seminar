//
//  ViewController.m
//  Ex02
//
//  Created by Satoshi Nakagawa on 2014/04/05.
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
    
    CalciTax *calciTax = [[CalciTax alloc] init];
    int price = 500;
    calciTax.tax = 0.08f; // @property指定してある場合、ドットシンタックスでアクセスできる（セッタは自動生成）。
    float iTax = [calciTax iTax:price tax:calciTax.tax]; // ゲッタも同様
    NSLog(@"価格%d円の税込金額は%.0f円です。（消費税率%.0f%%）", price, iTax, calciTax.tax * 100.0f);
    // "%.0f"で小数点以下を非表示。"%"自体を表示する場合は"%%"。
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end