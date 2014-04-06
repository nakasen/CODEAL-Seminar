//
//  Score.m
//  OOP01
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "Score.h"

@implementation Score

- (float)average:(int)score1 eScore:(int)score2 jScore:(int)score3
{
    return (float)(score1 + score2 + score3) / 3.0f;
}

- (void)setIdNumber:(int)number
{
    idNumber = number;
}

- (int)getIdNumber
{
    return idNumber;
}

@end
