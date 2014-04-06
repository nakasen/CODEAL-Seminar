//
//  Score.h
//  OOP01
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Score : NSObject
{
    // 以下の４項目は今回は未使用。セッタ、ゲッタを使ってアクセスできる。
    int idNumber;
    int math;
    int english;
    int japanese;
}

- (float)average:(int)score1 eScore:(int)score2 jScore:(int)score3;

- (void)setIdNumber:(int)number;
- (int)getIdNumber;

@end
