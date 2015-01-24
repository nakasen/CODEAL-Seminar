//
//  MyUIApplication.m
//  Tsubu
//
//  Created by Satoshi Nakagawa on 2014/06/21.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "MyUIApplication.h"

@implementation MyUIApplication

- (BOOL)openURL:(NSURL *)url
{
    if (!url) {
        return NO;
    }
    self.myOpenURL = url;
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    WebViewController *webViewController =
    [storyboard instantiateViewControllerWithIdentifier:@"WebViewController"];
    webViewController.openURL = self.myOpenURL;
    webViewController.title = @"Web View";
    [appDelegate.navigationController pushViewController:webViewController animated:YES];
    self.myOpenURL = nil;
    return YES;
}


@end
