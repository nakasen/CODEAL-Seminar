//
//  Report.m
//  Ex03
//
//  Created by Satoshi Nakagawa on 2014/04/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import "Report.h"

@implementation Report

- (float)average:(NSDictionary *)score { // 平均点を求めるメソッド
    int total = 0;
    for (id obj in [score allValues]) {
        total += [obj intValue];
    }
    return (float)total / (float)[[score allKeys] count];
}

- (void)setStudentIDNo:(NSString *)iDNo { // 学籍番号セッタ
    studentIDNo = iDNo;
}

- (NSString *)studentIDNo { // 学籍番号ゲッタ
    return studentIDNo;
}

- (void)setName:(NSString *)aName { // 氏名セッタ
    name = aName;
}

- (NSString *)name { // 氏名ゲッタ
    return name;
}

- (void)setScoreDict:(NSDictionary *)score { // 成績表セッタ
    scoreDict = score;
}

- (NSDictionary *)scoreDict { // 成績表ゲッタ
    return scoreDict;
}

@end
