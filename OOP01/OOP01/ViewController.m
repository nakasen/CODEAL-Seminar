//
//  ViewController.m
//  OOP01
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
    
    Score *score = [[Score alloc] init]; // インスタンス生成
    
    score.idNumber = 107; // ドットシンタックスでセット
    
    float average3 = [score average:70 eScore:50 jScore:80]; // メソッド実行
    
    NSLog(@"ID番号%dの学生の３科目の平均点は%.2f点です。", score.idNumber, average3); // ドットシンタックスでゲット
    // "%.2f"で小数点以下2桁表示
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
