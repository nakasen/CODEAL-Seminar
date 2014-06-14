//
//  ViewController.m
//  UIKitSample01
//
//  Created by Satoshi Nakagawa on 2014/06/14.
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
    self.view.backgroundColor = [UIColor lightGrayColor]; // Viewの背景色を変更
    
    UILabel *myLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(60, 50, 200, 100)];
    // 指定イニシャライザで初期化
    myLabel1.backgroundColor = [UIColor blueColor]; // Labelの背景色を変更
    myLabel1.textColor = [UIColor yellowColor]; // Labelの文字色を変更
    myLabel1.textAlignment = NSTextAlignmentCenter; // 中央揃え
    myLabel1.text = @"ラベル１"; // Labelタイトル
    [self.view addSubview:myLabel1]; // LabelをViewに貼り付け
    
    UIButton *myButton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    // コンビニエンスコンストラクタで初期化
    myButton1.frame = CGRectMake(60, 200, 200, 100);
    myButton1.backgroundColor = [UIColor redColor]; // Buttonの背景色を変更
    [myButton1 setTitle:@"ボタン１" forState:UIControlStateNormal]; // 通常時のButtonタイトル
    [myButton1 addTarget:self
                  action:@selector(buttonAction:)
        forControlEvents:UIControlEventTouchUpInside]; // ボタンを押した時の処理（メソッドの実行）
    [self.view addSubview:myButton1]; // ButtonをViewに貼り付け
}

- (void)buttonAction:(id)sender
{
    [UIView animateWithDuration:0.5 animations:^{ // 0.5秒で背景色をランダムな色に変更
        srand((int)time(NULL));
        int r = rand() % 256;
        int g = rand() % 256;
        int b = rand() % 256;
        UIColor *bgColor = [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0];
        self.view.backgroundColor = bgColor;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
