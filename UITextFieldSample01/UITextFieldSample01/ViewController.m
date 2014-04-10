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
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(60, 50, 200, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"年齢を入力して下さい。";
    textField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    textField.returnKeyType = UIReturnKeyDone;
    [textField addTarget:self
                  action:@selector(displayMessage:)
        forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.view addSubview:textField];
    
    _messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 50)];
    _messageLabel.textColor = [UIColor redColor];
    _messageLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_messageLabel];
}

- (void)displayMessage:(UITextField *)inputTextField {
    int inputNumber = [inputTextField.text intValue];
    int answerAge = inputNumber + 5;
    _messageLabel.text = [NSString stringWithFormat:@"あなたの本当の年齢は%d才ですね。", answerAge];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
