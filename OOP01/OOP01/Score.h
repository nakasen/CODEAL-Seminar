//
//  Score.h
//  OOP01
//
//  Created by Satoshi Nakagawa on 2014/04/05.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Score : NSObject

@property (nonatomic) int idNumber;

- (float)average:(int)score1 eScore:(int)score2 jScore:(int)score3;

@end
