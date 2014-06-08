//
//  Score.h
//  HelloWorld01
//
//  Created by Satoshi Nakagawa on 2014/06/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Score : NSObject

@property (nonatomic) int math;
@property (nonatomic) int english;
@property (nonatomic) int japanese;

- (float)average;

@end
