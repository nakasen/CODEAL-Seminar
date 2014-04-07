//
//  Report.h
//  Ex03
//
//  Created by Satoshi Nakagawa on 2014/04/07.
//  Copyright (c) 2014年 nakasen.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Report : NSObject
{
    NSString *studentIDNo;
    NSString *name;
    NSDictionary *scoreDict;
}

// プロパティ指定する場合は以下の通り
// @property (nonatomic, strong) NSString *studentIDNo;
// @property (nonatomic, strong) NSString *name;
// @property (nonatomic, strong) NSDictionary *scoreDict;

- (float)average:(NSDictionary *)score; // 平均点を求めるメソッド

- (void)setStudentIDNo:(NSString *)iDNo; // 学籍番号セッタ
- (NSString *)studentIDNo; // 学籍番号ゲッタ

- (void)setName:(NSString *)aName; // 氏名セッタ
- (NSString *)name; // 氏名ゲッタ

- (void)setScoreDict:(NSDictionary *)score; // 成績表セッタ
- (NSDictionary *)scoreDict; // 成績表ゲッタ

@end
