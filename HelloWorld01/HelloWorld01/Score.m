//
//  Score.m
//  HelloWorld01
//
//  Created by Satoshi Nakagawa on 2014/06/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "Score.h"

@implementation Score

- (float)average
{
    return (float)(self.math + self.english + self.japanese) / 3;
}

@end
