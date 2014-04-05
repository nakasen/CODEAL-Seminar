//
//  ViewController.m
//  Foundation01
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// 関数定義
void display2() // 引数なし、戻り値なし
{
    NSLog(@"2 Times.");
}

int always2() // 引数なし、戻り値あり
{
    return 2;
}

int twice(int value) { // 引数１、戻り値あり
    return 2 * value;
}

int multiple(int value1, int value2) // 引数２、戻り値あり
{
    return value1 * value2;
}

float iTax(int price, float tax) // 演習問題 税込み額計算
{
    return price * ((float)1.0f + tax);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 構文（if）
    int age = 19; // この数値を色々変えてみる
    if (age >= 20) {
        NSLog(@"成人");
    } else {
        NSLog(@"未成年");
    }
    
    // 構文（for）
    for (int i = 1; i <= 10; i++) {
        NSLog(@"%d", i);
    }
    
    // 構文（switch）
    int era = 99;
    switch (era) {
        case 0:
            NSLog(@"昭和");
            break;
        case 1:
            NSLog(@"平成");
            break;
        default:
            NSLog(@"年号エラー！");
            break;
    }
    
    // 演習問題　掛け算九九
    for (int j = 1; j <= 9; j++) {
        for (int i = 1; i <= 9; i++) {
            NSLog(@"%d × %d = %d", j, i, i * j);
        }
    }
    
    // 関数呼び出し
    display2();
    int answer = always2(); // 2 -> answer
    int answerTwice = twice(5); // 10 -> answerTwice
    int answerMulti = multiple(3, 2); // 6 -> answerMulti
    
    // iTax関数
    int tanka = 500;
    float zei = 0.08;
    float zeikomi = iTax(tanka, zei);
    NSLog(@"税込み金額は%.0f円です。（消費税%.0f%%）", zeikomi, zei * 100.0);
    
    // NSNumber
    NSNumber *myNumber1 = @1;
    NSNumber *myNumber2 = [[NSNumber alloc] initWithInt:1];
    NSNumber *myNumber3 = [NSNumber numberWithInt:1];
    
    NSLog(@"%@, %@, %@", myNumber1, myNumber2, myNumber3);
    
    // NSArray
    NSArray *rgbArray1 = @[@"Red", @"Green", @"Blue"];
    NSArray *rgbArray2 = [[NSArray alloc] initWithObjects:@"Red", @"Green", @"Blue", nil];
    NSArray *rgbArray3 = [NSArray arrayWithObjects:@"Red", @"Green", @"Blue", nil];
    
    // NSLog(@"%@, %@, %@", rgbArray1[0], rgbArray1[1], rgbArray1[2]);
    // NSLog(@"%@", [rgbArray1 objectAtIndex:0]);
    
    for (int k = 0; k < [rgbArray1 count]; k++) {
        NSLog(@"%@", rgbArray1[k]);
    }
    
    for (id obj in rgbArray1) { // 高速列挙
        NSLog(@"%@", obj);
    }
    
    // NSDictionary
    NSDictionary *personDict = @{@"name":@"Funassy", @"age":@39};
    
    // NSLog(@"%@, %@", personDict[@"name"], personDict[@"age"]);
    // NSLog(@"%@, %@", [personDict objectForKey:@"name"], [personDict objectForKey:@"age"]);
    
    for (id obj in [personDict allValues]) { // 高速列挙
        NSLog(@"%@", obj);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
