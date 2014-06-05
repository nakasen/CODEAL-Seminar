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
    for (id obj in [score allValues]) { // scoreディクショナリの値の部分をNSArrayとして抜き出し、各要素をobjに代入
        total += [obj intValue]; // オブジェクトをint型に変換
    }
    return (float)total / (float)[[score allKeys] count];
}

@end
