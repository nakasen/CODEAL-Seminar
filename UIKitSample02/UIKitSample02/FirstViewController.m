//
//  FirstViewController.m
//  UIKitSample02
//
//  Created by Satoshi Nakagawa on 2014/04/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.navigationItem.title = @"Top";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *myButton1 = [UIButton buttonWithType:UIButtonTypeCustom]; // コンビニエンスコンストラクタで初期化
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
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
