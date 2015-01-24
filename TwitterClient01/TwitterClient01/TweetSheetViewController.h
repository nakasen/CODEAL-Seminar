//
//  TweetSheetViewController.h
//  TwitterClient01
//
//  Created by Satoshi Nakagawa on 2015/01/24.
//  Copyright (c) 2015年 nakasen.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface TweetSheetViewController : UIViewController <UITextViewDelegate>

@property (nonatomic, copy) NSString *identifier;

@end
