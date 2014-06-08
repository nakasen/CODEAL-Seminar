//
//  ViewController.m
//  Foundation02
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
    
    NSNumber *myNumber1 = @1;
    NSNumber *myNumber2 = [[NSNumber alloc] initWithInt:2];
    NSNumber *myNumber3 = [NSNumber numberWithInt:3];
    
    NSLog(@"%@, %@, %@", myNumber1, myNumber2, myNumber3);
    
    NSString *myString1 = @"Funassy";
    NSLog(@"%@", myString1);
    
    NSArray *rgbArray1 = @[@"Red", @"Green", @"Blue"];
    NSArray *rgbArray2 = [[NSArray alloc] initWithObjects:@"Red", @"Green", @"Blue", nil];
    NSArray *rgbArray3 = [NSArray arrayWithObjects:@"Red", @"Green", @"Blue", nil];
    
    NSLog(@"%@, %@, %@", rgbArray1, rgbArray2, rgbArray3);
    
    NSLog(@"rgbArrayの２項目めの値は、%@です。", rgbArray1[1]);
    
    for (int i = 0; i < rgbArray1.count; i++) {
        NSLog(@"%@", rgbArray1[i]);
    }
    
    for (id obj in rgbArray1) {
        NSLog(@"%@", obj);
    }
    
    NSString *index = @"Red";
    if ([rgbArray1 containsObject:index]) {
        NSLog(@"%@ は %d 番目です。", index, [rgbArray1 indexOfObject:index] + 1);
    }
    
    NSDictionary *personDict1 = @{@"name": @"Funassy", @"age": @39};
    NSLog(@"%@", personDict1);
    
    NSLog(@"年齢は%@歳です。", personDict1[@"age"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
