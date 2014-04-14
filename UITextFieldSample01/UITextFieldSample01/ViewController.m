//
//  ViewController.m
//  UITextFieldSample01
//
//  Created by Satoshi Nakagawa on 2014/04/10.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *messageLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 220, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"年齢を入力して下さい。";
    textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    textField.returnKeyType = UIReturnKeyDone;
    [textField addTarget:self
                  action:@selector(displayMessage:)
        forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.view addSubview:textField];
    
    self.messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 50)];
    self.messageLabel.textColor = [UIColor redColor];
    self.messageLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.messageLabel];
}

- (void)displayMessage:(UITextField *)inputTextField {
    int inputNumber = [inputTextField.text intValue];
    int answerAge = inputNumber + 5;
    self.messageLabel.text = [NSString stringWithFormat:@"あなたの本当の年齢は%d才ですね。", answerAge];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
