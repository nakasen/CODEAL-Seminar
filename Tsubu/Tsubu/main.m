//
//  main.m
//  Tsubu
//
//  Created by Satoshi Nakagawa on 2014/06/14.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "MyUIApplication.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc,
                                 argv,
                                 NSStringFromClass([MyUIApplication class]),
                                 NSStringFromClass([AppDelegate class]));
    }
}
