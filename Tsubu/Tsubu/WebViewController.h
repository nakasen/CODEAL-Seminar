//
//  WebViewController.h
//  Tsubu
//
//  Created by Satoshi Nakagawa on 2014/06/21.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) NSURL *openURL;

@end
