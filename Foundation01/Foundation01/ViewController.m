//
//  ViewController.m
//  Foundation01
//
//  Created by Satoshi Nakagawa on 2014/06/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

float iTax(float value3, float value4)
{
    return value3 * (1 + value4);
}

int iTax2(int price, float tax)
{
    float iTax;
    iTax = (float)price * (1 + tax);
    return (int)iTax;
}

void display2()
{
    NSLog(@"2 times.");
}

int always2()
{
    return 2;
}

int twice(int value) {
    return 2 * value;
}

int multiple(int value1, int value2)
{
    return value1 * value2;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    float totalCost = iTax(100, 0.08);
    NSLog(@"金額は%f円", totalCost);
    
    
    display2();
    
    int answer = always2();
    NSLog(@"answer = %d", answer);
    
    int twiceAnswer = twice(50);
    NSLog(@"50 x 2 = %d", twiceAnswer);
    
    int multipleAnswer = multiple(10, 20);
    NSLog(@"10 x 20 = %d", multipleAnswer);
    
    
    
    
    int age = 18;
    age = 20;
    if (age >= 20 && age < 30) {
        NSLog(@"20代");
    } else {
        NSLog(@"20代以外");
    }
    
    if (age >= 20) {
        if (age < 30) {
            NSLog(@"20代");
        }
    }
    
    for (int i = 1; i <= 10; i++) {
        NSLog(@"%d", i);
    }
    
    
    
    
    int x;
    int y;
    
    for (x = 1; x <= 9; x++) {
        for (y = 1; y <= 9; y++) {
            NSLog(@"%d × %d = %d", x, y, x * y);
        }
    }
    
    
    
    
    
    int era = 3; // この数値を変えてみる
    switch (era) {
        case 0:
            NSLog(@"昭和");
            break;
        case 1:
            NSLog(@"平成");
            break;
        default:
            NSLog(@"年号 error!"); // 大正生まれはどうする？
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
